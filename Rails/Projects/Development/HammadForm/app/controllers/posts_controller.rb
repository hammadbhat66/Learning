class PostsController < ApplicationController
  before_action :find_post, only: [:show,:edit,:destroy,:update]
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
  	  render 'new'
  	end
  end
  def edit
  	
  end
  def destroy
  	@post.destroy
  	redirect_to root_path
  end
  def update
  	if @post.update(post_params)
  		redirect_to post_path
  	else
  		render root_path
  	end
  end
  def show
  	
  end
  def showall
  	@post=Post.all
  end

  private
  def find_post
  	@post=Post.find(params[:id])
  end
  def post_params
  	params.require(:post).permit(:title, :posting)
  	
  end
end
