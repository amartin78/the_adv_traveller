require 'rails_helper'
require 'spec_helper'

describe Article do
  
  context "All attributes must be present" do
    before {
      @article = build(:article)
    }
    it "should be valid" do
      expect(@article).to be_valid
    end
  end

  context "One of the attributes is empty" do
    before {
      @article = build(:article, author: "")
    }
    it "should not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "There is two articles with the same title" do
    before {
      @article1 = create(:article)
      @article2 = build(:article)
    }
    it "should not be valid" do
      expect(@article2).not_to be_valid
    end
  end

  context "Title attribute length is longer than expected" do
    before{
      @article = build(:article, title: "Travel...Vestibulum erat wisi, condimentum sed.")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Author attribute length is longer than expected" do
    before{
      @article = build(:article, author: "David..............................")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Body attribute length is shorter than expected" do
    before{
      @article = build(:article, body: "Aenean...")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

  context "Date attribute length is shorter than expected" do
    before{
      @article = build(:article, date: "2014-01-999")
    }
    it "shoud not be valid" do
      expect(@article).not_to be_valid
    end
  end

end
