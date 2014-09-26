class PaymentsController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  attr_protected :customer_id

  def create
    if current_user.charge(params)
      redirect_to :back, notice: 'Product has been successfully charged.' 
    else
      redirect_to :back, alert: 'Product has not been charged.'
    end
  end

end