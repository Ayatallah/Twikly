class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
  		@post = Post.new(post_params)
        @post.user = current_user
  		if @post.save
    		redirect_to @post
  		else
    		render 'new'
  		end
	end

	def update
  		@post = Post.find(params[:id])
 
  		if @post.update(post_params)
    		redirect_to @post
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@post = Post.find(params[:id])
  		@post.destroy
 
  		redirect_to posts_path
	end
    def upvote
     @post = Post.find(params[:id])
     @post.upvote_from current_user
     redirect_to @post
    end

    def downvote
    	@post = Post.find(params[:id])
    	@post.downvote_from current_user
    	redirect_to @post
    end
private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
