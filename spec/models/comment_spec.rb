require 'rails_helper'
require 'spec_helper'

describe Comment do 

  context "All attributes are present" do 
    before { 
      @comment = build(:comment)
    }
    it "should be valid" do 
      expect(@comment).to be_valid
    end
  end

  context "One attribute is not present" do 
    before { 
      @comment = build(:comment, body: "")
    }
    it "should not be valid" do 
      expect(@comment).not_to be_valid
    end
  end
  
end