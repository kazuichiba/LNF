class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :task_id, null:false
      t.string :content, null:false

      t.timestamps
    end
  end
end
