class Testimonial < ActiveRecord::Base
  belongs_to :product

  validates :name, :email, :body, presence: true
end
