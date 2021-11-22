class ApplicationController < ActionController::Base
  before_action :configure_signup_permitted_parameters, if: :devise_controller?
  before_action :configure_registration_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  require "stripe"

  private

  def configure_signup_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :seller]) 
  end

  def configure_registration_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :seller])
  end
end
