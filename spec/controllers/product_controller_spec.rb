require 'rails_helper'
require 'spec_helper'

describe ProductsController do 

  before do
    @user = create(:user)
  end

  describe "GET" do 
    
    context "user is not logged in" do
      it "should not render template" do
        get :index
        expect(response).not_to render_template("index")
        expect(flash[:alert]).to include("You need to sign in or")
      end
    end

    context "user is logged in" do 
      before { 
        sign_in :user, @user
      }
      it "responds successfully whith a 200 http status code" do 
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(response).to render_template("index")
      end
    end

    context "logged in user creates a product" do 
      before do
        sign_in :user, @user
        @product1, @product2 = create(:product), create(:product)
      end
      it "should display correct data" do
        get :index
        expect(assigns(:products)).to match_array([@product1, @product2])
      end
    end
  end
end
