class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :sub_comments
  validates :commenter , presence: true
end
