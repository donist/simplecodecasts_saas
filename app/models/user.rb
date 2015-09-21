class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :plan
  attr_accessor :stripe_card_token
<<<<<<< HEAD
=======
  
>>>>>>> a42814cea71c3cd67f800284f8a7888c91efab37
  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> a42814cea71c3cd67f800284f8a7888c91efab37
