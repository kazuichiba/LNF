class CommentsController < ApplicationController

  def create
    @task = Task.find(params[:id])
    @comment = @task.comments.new(params[:comment])
    if @comment.save
      redirect_to @commentable
      flase[:notice] = "Comment created."
    else
      render :new
    end
  end
end