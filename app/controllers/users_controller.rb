class UsersController < ApplicationController

  before_filter :authenticate_user!
  load_and_authorize_resource

  def show
   @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
  end

  private

    def user_params
      require(:user)
    end

end
