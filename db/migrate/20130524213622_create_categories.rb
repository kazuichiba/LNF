class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null:false
      t.string :color, null:false
      t.string :account_id, null:false

      t.timestamps
    end
  end
end
