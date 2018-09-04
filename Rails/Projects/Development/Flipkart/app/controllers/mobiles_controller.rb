class MobilesController < ApplicationController
  
  def index
  	@mobiles=Mobile.all
  end
  	
  
  def new
  	@mobile =Mobile.new
  	
  	@Mobiles=Mobile.all
  	  end
  def create
  	@mobile =Mobile.new(post_params)
  	if @mobile.save
  		redirect_back(fallback_location: root_path)
  		flash[:notice] = 'Successfully Updated'
  	else
      redirect_back(fallback_location: root_path)
    end
  
  		
  	end
    def destroy
      @mobile =Mobile.find(params[:id])
      if @mobile.destroy
      redirect_back(fallback_location: root_path)
      else
        redirect_back(fallback_location: root_path)
      end
    end
  
  private
  def post_params
  	params.require(:mobile).permit(:brand,:mobile_model,:cost,:brief,:image)
  	
  end
end
