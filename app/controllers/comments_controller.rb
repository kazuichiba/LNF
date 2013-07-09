class CommentsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.new(params[:comment])
    @comment.user = current_user 
    if @comment.save
      redirect_to task_path(@task)
      flash[:notice] = "Comment created."
    else
      render :new
    end
  end
end