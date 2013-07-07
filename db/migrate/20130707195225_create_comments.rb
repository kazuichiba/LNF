class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.string   "body"
      t.integer  "user_id"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
      t.timestamps
    end
  end
end
