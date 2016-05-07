class CommentsController < ApplicationController
	def new
		@post = Post.find(params[:post_id])
    	@comment = @post.comment.build
	end
	
	def create
		@post = Post.find(params[:post_id])
    	@comment = @post.comment.build(post_params)

    	if @comment.save
      		redirect_to @post
    	else
      		render 'new'
    	end
	end

	private
        def post_params
   	    params.require(:comment).permit( :email , :comment)
  	end
end