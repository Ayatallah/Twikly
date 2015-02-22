class PhotosController < BlogController
	def index
	end
	def create
		@article = Article.find(params[:article_id])
		@photo = @article.photos.create(photo_params)
		redirect_to article_path(@article)
	end
    def destroy
		@article = Article.find(params[:article_id])
		@photo = @article.photos.find(params[:id])
		@photo.destroy
		redirect_to article_path(@article)
	end
	private
	def photo_params
		params.require(:photo).permit(:image)
	end
end
