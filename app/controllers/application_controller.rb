class ApplicationController < ActionController::Base

    skip_before_action(:verify_authenticity_token)

    before_action(:check_login)
    # skip_before_action(:check_login,only)
    def check_login
        if(session[:user_id] == nil)
            redirect_to("/users/login")
        # else 
        #     redirect_to("/users/new")
        end
    end

    def homepage
       
    end
   

   

end

