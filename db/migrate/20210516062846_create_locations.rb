class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :street
      t.string :city
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.integer :status
      t.timestamps
    end
  end
end
