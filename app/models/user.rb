class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :customer_id, :password, :password_confirmation

  def charge(options)

    cus=Stripe::Customer.create(card: options[:stripeToken], email: email)
    update_attributes customer_id: cus.id

    Stripe::Charge.create(
    	:customer    => cus.id,
    	:amount      => 10000,
    	:description => '1 Tour',
    	:currency    => 'GBP'
		)

  end

end
