class PagesController < ApplicationController
  def landing_page
    @featured_products = [ (Product.find_by name: 'Tanzania'), (Product.find_by name: 'Atacama Desert'), (Product.find_by name: 'Alaska') ]
  end

  def contact
  end

  def about
  end
end
