
class Photo < ActiveRecord::Base
	
  belongs_to :article
 mount_uploader :image, ImageUploader
 
end
