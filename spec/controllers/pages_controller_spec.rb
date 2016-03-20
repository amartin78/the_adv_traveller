require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET myphotos" do
    it "returns http success" do
      get :myphotos
      expect(response).to be_success
    end
  end

end
