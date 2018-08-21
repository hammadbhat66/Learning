class PostController < ApplicationController
  def index
  	@post=Student.find(1)
  end
end
