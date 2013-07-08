class PostsController < ApplicationController

	def show
	  @post = Post.find(params[:id])
	  @commentable = @post
	  @comments = @commentable.comments
	  @comment = Comment.new
	end
end