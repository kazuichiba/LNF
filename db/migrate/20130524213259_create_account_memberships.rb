class CreateAccountMemberships < ActiveRecord::Migration
  def change
    create_table :account_memberships do |t|
      t.string :user_id
      t.string :account_id

      t.timestamps
    end
  end
end
