class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :title
      t.text :description
      t.references :contract_statuses
      t.references :locations
      t.timestamps
    end

    remove_column :locations, :status
  end
end
