class PagesController < ApplicationController
  def landing_page
  	@featured_products = Product.where(featured: true).all
  end
  def about
  end
  def brochure
  end
  def myphotos
  end
end
