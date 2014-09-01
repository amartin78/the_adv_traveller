require 'rails_helper'
require 'spec_helper'

describe Article do
  
  context "All attributes must be present" do
    before {
      @article = Article.new(title: "Travel...", author: "James", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "should be valid" do
      expect(@article).to be_valid
    end
  end

  context "One of the attributes is empty" do
    before {
      @article = Article.new(title: "Travel...", author: "", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "should not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "There is two articles with the same title" do
    before {
      @article1 = Article.create(title: "Travel...", author: "David", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
      @article2 = Article.create(title: "Travel...", author: "John", date: "01/09/2014", 
        body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "should not be valid" do
      expect(@article2).not_to be_valid
    end
  end

  context "Title attribute length is longer than expected" do
    before{
      @article = Article.new(title: "Travel...Vestibulum erat wisi, condimentum sed.", author: "David", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Author attribute length is longer than expected" do
    before{
      @article = Article.new(title: "Roma", author: "David..............................", date: "01/09/2014", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Body attribute length is shorter than expected" do
    before{
      @article = Article.new(title: "Roma", author: "David", date: "01/09/2014", 
      body: "Aenean...")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Date attribute length is shorter than expected" do
    before{
      @article = Article.new(title: "Roma", author: "David", date: "2014-01-999", 
      body: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

end
