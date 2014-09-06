require 'rails_helper'
require 'spec_helper'

describe UsersController do

  before do 
    @user = create(:user)
  end

  context "User object has been created" do 
    it "It should have the correct id value" do
        expect(@user.id).to eq 1 
    end
  end 

  describe "GET SHOW" do
    context "user is logged in" do 

      before do
        session[:user_id] = @user.id
      end
      
      it "should load the correct user details" do 
        get :show, id: @user
        expect(assigns(:user)).to eq @user 
        
      end

    end
  end
end