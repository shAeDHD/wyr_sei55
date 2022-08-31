class ApplicationController < ActionController::Base

    before_action :fetch_user
    
    
    # client = Pexels::Client.new('563492ad6f91700001000001d5f38a6e895a41b8ab0e4565475c9eed')
   


    def fetch_user

        if session[:user_id].present?
        
            @current_user = User.find_by id: session[:user_id]
            # raise 'hell'

        end # check for log in

        unless @current_user.present?

            session[:user_id] = nil # forces logout of invalid 'stale' ids 

        end

    end # fetch user

    def check_if_logged_in 

        unless @current_user.present?

            flash[:error] = 
            'Want to see what everyone else chose? Either log in, or create an account.'

            redirect_to login_path

        end # unless

    end # check if logged in


end # class ApplicationController
