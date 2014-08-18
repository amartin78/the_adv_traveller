class PagesController < ApplicationController
  def landing_page
    @featured_products = [ Product.find(7), Product.find(4), Product.find(3) ]
  end

  def contact
  end

  def about
  end
end
