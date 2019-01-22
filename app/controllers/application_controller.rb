class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password,:phonenumber)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password,:phonenumber)}
          end
    
    def verify_admin
        if current_user.admin != 1
          flash[:error] = "You do not have permission to do that."
          redirect_to "/"
        end 
     end
end
