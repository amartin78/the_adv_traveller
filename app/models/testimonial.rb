class Testimonial < ActiveRecord::Base
	
	belongs_to :product

	attr_accessible :name, :email, :body, :rate

	validates :name, :email, :body, :rate, presence: true

end
