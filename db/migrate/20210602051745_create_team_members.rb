class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.string :nickname
      t.string :full_name
      t.text :description
      t.integer :job_role
      t.string :primary_contact_number
      t.string :secondary_contact_number
      t.string :email
      t.boolean :display
      t.timestamps
    end
  end
end
