module Headless
  module Rails
    class ApplicationController < ActionController::Base
      layout 'application'
      include CrudModel

    end
  end
end
