class CommentsController < ApplicationController

def create
    @commentable = Post.find(params[:id])
    @comment = @commentable.comments.new(params[:comment])
    if @comment.save
      redirect_to @commentable
      flase[:notice] = "Comment created."
    else
      render :new
    end
  end
end