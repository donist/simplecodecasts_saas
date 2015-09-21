class AddStripeCustomerTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_customer_token, :string
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> a42814cea71c3cd67f800284f8a7888c91efab37
