class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.references :contract_status
      t.references :location
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
