class CreateCarousels < ActiveRecord::Migration[5.2]
  def change
    create_table :carousels do |t|
      t.string :title
      t.text :description
      t.string :url
      t.boolean :display
      t.timestamps
    end
  end
end
