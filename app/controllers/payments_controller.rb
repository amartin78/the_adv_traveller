class PaymentsController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  skip_before_action :verify_authenticity_token

  attr_protected :customer_id

  def create

  	respond_to do |format|
	    if current_user.charge(params)
	    	format.html { redirect_to :back, notice: 'Product has been successfully charged.' }
	    	format.js { redirect_to :back, notice: 'Product has been successfully charged. --- js' }
	    	format.json { render json: :back, status: :created }
	    else
	      format.html { redirect_to :back, alert: 'Product has not been charged.' }
	      format.js {}
	    	format.json { render json: :back, status: :created }
	    end
  	end

  end

end