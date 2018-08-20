class PostsController < ApplicationController
  before_action :post_find, only: [:show,:edit,:update,:delete]
  def index

  end
  def new
  	@post=Post.new
  end
  def create
  	@post=Post.new(post_params)
  	if @post.save
  	  redirect_to @post
  	else
  	  render "new"
  	end
  end
  def show
  	
  end
  def edit
  	
  end
  def update
  	@post=Post.new(post_params)
  	if update
  		redirect_to post_path
  	else
  		render "index"
  	end
  end
  def destroy
  	@post.destroy
  end

  private
  def post_params
  	params.require(:post).permit(:title, :posting)
  end
  def post_find
  	@post = Post.find(params[:id])
  end
end
