require 'rails_helper'
require 'spec_helper'

describe UsersController do

  before do 
    @user = create(:user)
  end

  describe "GET SHOW" do

    context "user is logged in" do 
      before do
        sign_in :user, @user
      end     
      it "should load the correct user details" do 
        get :show, id: @user
        expect(response.status).to eq 200
        expect(assigns(:user)).to eq @user
      end
    end

    context "User is not logged in" do
      it "should redirect to login" do
        get :show, id: @user
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end