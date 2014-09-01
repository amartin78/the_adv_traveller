require 'rails_helper'
require 'spec_helper'

describe Comment do 

  context "All attributes are present" do 
    before { 
      @article = Article.create(title: "Travel...", author: "David", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
      @comment = @article.comments.build(commenter: "James", body: "Mauris placerat eleifend leo.")
    }
    it "should be valid" do 
      expect(@comment).to be_valid
    end
  end

  context "One attribute is not present" do 
    before { 
      @article = Article.create(title: "Travel...", author: "David", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
      @comment = @article.comments.build(commenter: "James", body: "")
    }
    it "should not be valid" do 
      expect(@comment).not_to be_valid
    end
  end
  
end