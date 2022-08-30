class ApplicationController < ActionController::Base

    before_action :fetch_user

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

            flash[:error] = 'You must be logged in to perform this action.'

            redirect_to login_path

        end # unless

    end # check if logged in


end # class ApplicationController
