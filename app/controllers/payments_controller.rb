class PaymentsController < ApplicationController

  def create
    stripe_customer = Stripe::Customer.create( :card => params[:stripeToken] )

    charge = Stripe::Charge.create(
      :customer => stripe_customer.id,
      :amount => "10000",
      :description => 'Tour 1 Week',
      :currency => 'GBP'
    ) 
    
    respond_to do|format|
      if charge.save
        format.html { redirect_to :back, notice: 'Product has been successfully charged.' }
      else
        format.html { redirect_to :back, alert: "Product has not been charged." }
      end
    end
  end
end