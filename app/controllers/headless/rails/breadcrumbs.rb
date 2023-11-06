module Headless
  module Rails
    module Breadcrumbs
      extend ActiveSupport::Concern

      included do
        helper_method :breadcrumb
      end
      def breadcrumb
        return [] unless @model
        [
          {
            title: 'AI Models',
            path: ai_models_path
          },
          {
            title: @model.name,
            path: ai_model_path(@model)
          }
        ]
      end
    end
  end
end
