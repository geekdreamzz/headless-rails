class AiModel < ActiveRecord::Migration[7.0]
  def change
    create_table :hr_ai_models do |t|
      t.string  :name, unique: true
      t.text    :description
      t.text    :system_persona
      t.string  :version
      t.jsonb   :metadata, default: {}
      t.boolean :active, default: true
      t.timestamps
    end

    add_index :hr_ai_models, [:name, :version, :active]
    add_index :hr_ai_models, :metadata, using: :gin
  end
end
