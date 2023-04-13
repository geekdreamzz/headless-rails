module Headless
  module Rails
    module CrudModel
      extend ActiveSupport::Concern

      included do
        helper_method :crud_model
        before_action :set_model, only: [:show, :edit, :update, :destroy]
      end

      def create
        @model = crud_model.new(crud_model_params)

        if @model.save
          redirect_to @model, notice: 'AiModel was successfully created.'
        else
          render :new
        end
      end

      def update
        if @model.update(crud_model_params)
          redirect_to @model, notice: 'AiModel was successfully updated.'
        else
          render :edit
        end
      end

      def show
        @model = crud_model.find(params[:id])
      end

      def crud_model
        if @crud_model
          @crud_model
        else
          raise StandardError, "child controller @crud_model needs to be overridden with the desired Active Record class object. This will automate CRUD actions."
        end
      end

      def crud_model_private_columns
        [:id, :created_at, :updated_at]
      end

      def crud_model_columns
        crud_model.columns.map{|c|c.name.to_sym} - crud_model_private_columns
      end

      def crud_model_params
        params.require(crud_model.model_name.element).permit(crud_model_columns)
      end

      def set_model
        @model = crud_model.find(params[:id])
      end
    end
  end
end
