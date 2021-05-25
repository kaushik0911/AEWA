class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.references :project_status
      t.references :location
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :desplay
      t.timestamps
    end

    add_reference :locations, :project, index: true
  end
end
