require 'rails_helper'
require 'spec_helper'

describe Testimonial do 

  context "All attributes are present" do 
    before { 
      @testimonial = build(:testimonial)
    }
    it "should be valid" do 
      expect(@testimonial).to be_valid
    end
  end

  context "One attribute is not present" do 
    before { 
      @product = Product.create( name: "Roma", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", 
        months: "april-september", price: 25.35, featured: true )
      @testimonial = @product.testimonials.build(name: "", email: "example@example.org", body: "Mauris placerat eleifend leo.")
    }
    it "should not be valid" do 
      expect(@testimonial).not_to be_valid
    end
  end
  
end