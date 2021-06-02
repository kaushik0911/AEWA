class CreateContactUs < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :comment
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
