class YoutubesController < BlogController

	def index
	end

	def create
		@article = Article.find(params[:article_id])
		@youtube = @article.youtubes.create(youtube_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@youtube = @article.youtubes.find(params[:id])
		@youtube.destroy
		redirect_to article_path(@article)
	end

	private
	
	def youtube_params
     params.require(:youtube).permit(:youtube_url)
	end
end
