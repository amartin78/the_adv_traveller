class PaymentsController < ApplicationController

  def create
    if current_user.charge(params)
      redirect_to :back, notice: 'Product has been successfully charged.' 
      #redirect_to :back, notice: params
    else
      redirect_to :back, alert: 'Product has not been charged.'
    end
  end

end