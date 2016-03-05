require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET brochure" do
    it "returns http success" do
      get :brochure
      expect(response).to be_success
    end
  end

end
