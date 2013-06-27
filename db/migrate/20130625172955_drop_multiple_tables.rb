class DropMultipleTables < ActiveRecord::Migration
  def change
    drop_table :account_memberships
    drop_table :accounts
    drop_table :categories
    drop_table :categorizations
    drop_table :notes
  end
end
