module Headless
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Headless::Rails
    end
  end
end
