class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :user_id
      t.string :task
      t.string :label
      t.string :notes
      t.string :content
      t.string :completed
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
