class CommentsController < ApplicationController

  def create
    @comment = @task.comment.build(params[:id])
    @comment.user_id = current_user.id

    if @review.save
      flash[:notice] = "Your review was posted."
      redirect_to @movie
    else
      render action: "new"
    end
  end