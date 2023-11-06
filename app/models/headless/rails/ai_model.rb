module Headless
  module Rails
    class AiModel < ApplicationRecord
      self.table_name = 'hr_ai_models'

      scope :active, -> { where(active: true) }

    end
  end
end
