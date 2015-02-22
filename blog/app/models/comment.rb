class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :sub_comments, dependent: :destroy
  validates :commenter , presence: true
end
