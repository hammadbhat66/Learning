class CommentsController < ApplicationController
	before_action :authenticate_model!
def new
	
end
def create
	
	@comment =current_model.comments.build(post_params)
	@comment.comment = params[:comment][:comment]
	@comment.post_id = params[:post_id]
	if @comment.save
		redirect_to post_path(@comment.post)
	else
		flash.now[:alert] = 'You forgot to type in the comment'
	end
			
end
def update
	
end
def destroy
	@post_id =params[:id]
	@comment = Comment.find(params[:post_id])
	if @comment.destroy
		redirect_to 'http://localhost:3000/posts/'+@post_id.to_s
    end
end
private
def post_params
	params.require(:comment).permit(:comments,:model_id,:post_id)
	
end

end
