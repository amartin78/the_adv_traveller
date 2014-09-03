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
      @testimonial = build(:testimonial, email: "")
    }
    it "should not be valid" do 
      expect(@testimonial).not_to be_valid
    end
  end
  
end