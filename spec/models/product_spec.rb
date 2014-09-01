require 'rails_helper'
require 'spec_helper'

describe Product do

  context "All attributes are present" do 
    before { 
      @product = Product.new( name: "Roma", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", months: "april-september", price: 25.35, 
    featured: true )
    }
    it "shoud be valid" do
      expect(@product).to be_valid
    end
  end

  context "Name is empty" do
    before { 
      @product = Product.new( name: "", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", months: "april-september", price: 25.35, 
      featured: true )
    }
    it "shoud not be valid" do
      expect(@product).not_to be_valid
    end
  end

  context "Name attribute length is longer than expected" do 
    before { 
      @product = Product.new( name: "Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", months: "april-september", price: 25.35, 
      featured: true )
    }
    it "shoud not be valid" do
      expect(@product).not_to be_valid
    end
  end

  context "Description attribute length is shorter than expected" do 
    before { 
      @product = Product.new( name: "Roma", description: "Aenean...", image_src: "/images/roma.jpg", months: "april-september", price: 25.35, 
      featured: true )
    }
    it "should not be valid" do 
      expect(@product).not_to be_valid
    end
  end

  context "Price has three decimals and is greater than 10000" do 
    before { 
      @product = Product.new( name: "Roma", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", months: "april-september",
      price: 10000.001, featured: true )
    }
    it "should not be valid" do 
      expect(@product).not_to be_valid
    end
  end
end