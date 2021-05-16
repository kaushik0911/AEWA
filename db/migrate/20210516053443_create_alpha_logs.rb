class CreateAlphaLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :alpha_logs do |t|
      t.text :comment
      t.float :cost
      t.timestamps
    end
  end
end
