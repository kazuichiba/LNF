class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :title, null:false
      t.string :label
      t.string :notes
      t.string :content
      t.boolean :completed
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
