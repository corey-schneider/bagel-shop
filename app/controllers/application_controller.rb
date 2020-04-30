class ApplicationController < ActionController::Base
    
    helper_method :current_user, :authenticate_admin
    
    def authenticate_admin
        return unless !current_user
        redirect_to root_path
    end
    
    def owner?(object)
        current_user == object.user 
    end
    
    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end
    
end