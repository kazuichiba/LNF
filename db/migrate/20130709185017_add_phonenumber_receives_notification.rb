class AddPhonenumberReceivesNotification < ActiveRecord::Migration
  def up
    add_column :users, :phone_number, :string
    add_column :users, :receives_notification, :boolean
  end

  def down
    remove_column :users, :phone_number
    remove_column :users, :receives_notification
  end
end
