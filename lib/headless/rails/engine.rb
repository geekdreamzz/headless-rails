module Headless
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Headless::Rails
      config.parent_application_controller = '::ApplicationController'
    end
  end
end
