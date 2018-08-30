class PostsController < ApplicationController
  before_action :postbyid, only: [:show]
  def index

  end
  def myname
  	@post =Post.new
  end
  def create
  	@post=Post.new(post_params)
  	if @post.save
  		redirect_to @post
  	else
  		render 'myname'
  	end
  end
  def show
  	@comment =@post.comments.new
  	#@comment = Comment.new
  	
  end
  private
  def post_params
  	params.require(:post).permit(:title,:posting)
  	
  end
  def postbyid
  	@post =Post.find(params[:id])
  	
  end
  def pre_params
  	params.require(:comment).permit(:comment)
  	
  end
end
