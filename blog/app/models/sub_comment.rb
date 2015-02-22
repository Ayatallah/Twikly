class SubComment < ActiveRecord::Base
  belongs_to :comment
  validates :commenter , presence: true
end
