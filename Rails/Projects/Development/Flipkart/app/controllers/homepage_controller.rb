class HomepageController < ApplicationController
  before_action :findit, only: [:show,:update,:destroy]
  def index
  end
  def new
  	@category =Category.new
  end
  def create
  	@category =Category.new
  	if @category.save
  		redirect_to @category
  	else
  		render 'new'
  	end
  	
  end
  def show
  	
  end
  def update

  	
  end
  def destroy
  	
  end
  private
  def findit
  	Category.find(params[:id])
  	
  end
end
