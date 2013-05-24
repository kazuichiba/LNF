class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user_id, null:false

      t.timestamps
    end
  end
end
