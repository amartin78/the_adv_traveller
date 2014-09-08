require 'rails_helper'
require 'spec_helper'

describe CommentsController do

  describe "POST" do

    context "user creates a comment" do
      
      before do
        @comment = create(:comment)
      end
     
      it "displays correct data" do  
        expect(@comment.commenter).to eq 'Michael'
      end
    end
  end
end
