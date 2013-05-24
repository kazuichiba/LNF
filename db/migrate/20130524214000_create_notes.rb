class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :task_id
      t.string :content

      t.timestamps
    end
  end
end
