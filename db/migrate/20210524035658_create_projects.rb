class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.references :project_status
      t.datetime :start_date
      t.datetime :end_date

      t.string :street
      t.string :city
      t.string :zipcode

      t.float :lat
      t.float :lng

      t.boolean :display
      t.timestamps
    end
  end
end
