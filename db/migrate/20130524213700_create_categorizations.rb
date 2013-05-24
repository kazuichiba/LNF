class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.string :task_id
      t.string :category_id

      t.timestamps
    end
  end
end
