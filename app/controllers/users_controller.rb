class UsersController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  attr_protected :email, :password, :password_confirmation
  before_filter :authenticate_user!
  load_and_authorize_resource

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(params[:user])
  end

end
