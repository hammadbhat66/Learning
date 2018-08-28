class StudentsController < ApplicationController
  def index
  end
  def new
  	student=Student.new
  end
  def show
  	
  end
  def create
  	student=Student.new
  
  student.name=params[:name]
  student.address=params[:address]
  student.institution=params[:studentinstitution]
  student.fathers_name=params[:fathers_name]
  student.phone_no=params[:phone_no]
  student.gender=params[:gender]
  	if student.save
  	redirect_to student
  else
  	render 'new'
  end

  	
  
  end
  def update
  	
  end
  def destroy
  	
  end
  def what
  	
  end
  private
  def post_param
  	params.require(:student).permit(:name,:address,:institution,:fathers_name,:phone_no,:gender)
    return params
  end
end
