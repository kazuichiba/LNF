class CreateAccountMemberships < ActiveRecord::Migration
  def change
    create_table :account_memberships do |t|
      t.string :user_id, null:false
      t.string :account_id, null:false

      t.timestamps
    end
  end
end
