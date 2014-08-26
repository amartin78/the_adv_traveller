class Product < ActiveRecord::Base

  has_many :testimonials
  	
  validates :name, :description, :image_src, :price, :months, presence: true
  validates :name, length: { maximum: 15 }
  validates :description, length: { in: 20..200 }
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ },  :numericality => { :greater_than => 0, :less_than => 10000 }
end
