class CommentsController < ApplicationController
  def index
  end
  def create
  	@post=Post.new
  	@comment =@post.comments.new(pre_params)
  	if @comment.save
  		redirect_to 'http://google.com'
  	else
  		render 'root_path'
  	end
  	def show

  		
  	end
  end
  private
  def pre_params
  	params.require(:comment).permit(:comment)
  end
end
