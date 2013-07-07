class AddCommentsToTaskTable < ActiveRecord::Migration
  def change
    add_column :tasks, :comments, :text
    add_column  :tasks, :comment_id, :integer
  end
end
