class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string  :first_name
      t.string  :last_name
      t.string  :image
      t.timestamps null: false
    end
  end
end
