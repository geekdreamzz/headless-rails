module Headless::Rails
  class AiModelsController < ApplicationController
    def crud_model
      @crud_model = AiModel
    end
  end
end
