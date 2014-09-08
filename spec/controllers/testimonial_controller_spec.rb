require 'rails_helper'
require 'spec_helper'

describe TestimonialsController do

  describe "POST" do

    context "user creates a testimonial" do
      
      before do
        @testimonial = create(:testimonial)
      end
     
      it "displays correct data" do  
        expect(@testimonial.email).to eq 'example@example.org'
      end
    end
  end
end