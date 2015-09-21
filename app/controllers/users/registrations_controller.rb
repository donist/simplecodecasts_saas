class Users::RegistrationsController < Devise::RegistrationsController
<<<<<<< HEAD
  before_filter :select_plan, only: :new
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
  
  private
    def select_plan
      unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2')
        flash[:notice] = "Please select a membership plan to sign up."
        redirect_to root_url
      end
    end
  
=======
    
    def create
        super do |resource|
            if params[:plan]
                resource.plan_id = params[:plan]
                if resource.plan_id == 2
                    resource.save_with_payment
                else
                    resource.save
                end
            end
        end
    end
>>>>>>> a42814cea71c3cd67f800284f8a7888c91efab37
end