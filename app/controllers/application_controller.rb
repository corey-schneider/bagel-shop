class ApplicationController < ActionController::Base
    
    helper_method :current_user#, :authenticate_admin
    
    # def authenticate_admin
    #     return unless !current_user
    #     redirect_to root_path
    # end
    
    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end
    
    # read this: https://github.com/CanCanCommunity/cancancan/wiki/exception-handling <-- "Danger of exposing sensible information"
#     rescue_from CanCan::AccessDenied do |exception|
#     respond_to do |format|
#       format.json { head :forbidden, content_type: 'text/html' }
#       format.html { redirect_to main_app.root_url, notice: exception.message }
#       format.js   { head :forbidden, content_type: 'text/html' }
#     end
#   end
    
end