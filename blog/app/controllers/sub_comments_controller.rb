class SubCommentsController < BlogController
	def show
		@sub_comment = Sub_comment.find(params[:id])
	end
	def create
		
		@comment = Comment.find(params[:comment_id])
		@sub_comment = @comment.sub_comments.create(sub_comment_params)
		redirect_to comment_path(@comment)
	end
	def destroy
		
		@comment = Comment.find(params[:comment_id])
		@sub_comment = @comment.sub_comments.find(params[:id])
		@sub_comment.destroy
		redirect_to comment_path(@comment)
	end

	private 
	def sub_comment_params
	  params.require(:sub_comment).permit(:commenter, :body)
	end
end
