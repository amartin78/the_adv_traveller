require 'rails_helper'
require 'spec_helper'

describe Product do

  context "All attributes are present" do 
    before { 
      # @product = build(:product)
      @product = Product.new(product_params)
    }
    it "shoud be valid" do
      expect(@product).to be_valid
    end
  end

  context "Name is empty" do
    before { 
      @product = build(:product, name: "")
    }
    it "shoud not be valid" do
      expect(@product).not_to be_valid
    end
  end

  context "Name attribute length is longer than expected" do 
    before { 
      @product = build(:product, name: "Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.")
    }
    it "shoud not be valid" do
      expect(@product).not_to be_valid
    end
  end

  context "Description attribute length is shorter than expected" do 
    before { 
      @product = build(:product, description: "Aenean...")
    }
    it "should not be valid" do 
      expect(@product).not_to be_valid
    end
  end

  context "Price has three decimals and is greater than 10000" do 
    before { 
      @product = build(:product, price: 10000.001)
    }
    it "should not be valid" do 
      expect(@product).not_to be_valid
    end
  end
end