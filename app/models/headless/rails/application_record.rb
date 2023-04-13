module Headless
  module Rails
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true

      def self.admin_ui_components
        binding.pry
      end
    end
  end
end
