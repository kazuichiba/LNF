class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.string :task_id, null:false
      t.string :category_id, null:false

      t.timestamps
    end
  end
end
