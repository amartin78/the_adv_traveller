class Article < ActiveRecord::Base

  attr_accessible :title, :author, :date, :body

  has_many :comments

  validates :title, :author, :date, :body, presence: true
  validates :title, :author, uniqueness: true
  validates :title, length: { maximum: 60 }
  validates :author, length: { maximum: 30 }
  validates :body, length: { in: 20..3000 }
  validates :date, length: { is: 10 }
  
end