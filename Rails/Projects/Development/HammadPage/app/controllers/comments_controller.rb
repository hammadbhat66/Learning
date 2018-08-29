class CommentsController < ApplicationController
def new
	
end
def create
	@comment = @post.comments.new(params[:comment])
    @comment.user_id = @post.current_user.id
    @comment.save
end
def update
	
end
def delete
	
end

end
