class Post < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 5 }

    acts_as_votable
    has_many :comments
    belongs_to :user
end
