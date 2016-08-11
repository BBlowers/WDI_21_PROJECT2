class RegistrationsController < Devise::RegistrationsController

  before_action :authenticate_user!
  protected
    def configure_permitted_parameters      
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :profile_pic, :remote_profile_pic_url])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :profile_pic, :remote_profile_pic_url])
    end
    def after_update_path_for(resource)
      user_path(resource)
    end

    def after_sign_in_path_for(resource)
      user_path(resource)
    end
end