class Comment < ActiveRecord::Base
  belongs_to :article

  attr_accessible :commenter, :body

  validates :commenter, :body, presence: true
end
