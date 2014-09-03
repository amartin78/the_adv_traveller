class Testimonial < ActiveRecord::Base
  belongs_to :product
  attr_accessible :name, :email, :body
  
  validates :name, :email, :body, presence: true
end
