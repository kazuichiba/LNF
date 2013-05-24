class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :user_id, null:false
      t.string :task, null:false
      t.string :label, null:false
      t.string :notes, null:false
      t.string :content, null:false
      t.string :completed, null:false
      t.string :status, null:false
      t.string :priority, null:false

      t.timestamps
    end
  end
end
