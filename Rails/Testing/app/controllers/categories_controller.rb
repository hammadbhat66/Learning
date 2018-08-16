class CategoriesController < ApplicationController
  def index
  	@categories=Category.new
  end
  def create
  	@categories=Category.new(post_params)
  	if @categories.save
  		redirect_to @categories
  	else
  		render 'index'
  	end
  end
  def show
  	@categories =Category.find(params[:id])
  	@categories=Category.all
  end

  private
  def post_params
  	params.require(:category).permit(:name)
  	
  end
end
