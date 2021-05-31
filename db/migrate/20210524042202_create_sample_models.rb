class CreateSampleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :sample_models do |t|
      t.string :title
      t.text :description
      t.boolean :display
      t.timestamps
    end
  end
end
