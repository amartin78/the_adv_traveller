class PagesController < ApplicationController
  def landing_page
   @featured_products = Product.where(featured: true).all
  end

  def contact
  end

  def about
  end
end
