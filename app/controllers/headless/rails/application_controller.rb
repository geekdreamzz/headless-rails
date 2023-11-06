module Headless
  module Rails
    class ApplicationController < Engine.config.parent_application_controller.constantize
      layout 'application'
      include Breadcrumbs
      include CrudModel
    end
  end
end
