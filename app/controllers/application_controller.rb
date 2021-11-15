class ApplicationController < ActionController::Base
  before_action :configure_signup_permitted_parameters, if: :devise_controller?
  before_action :configure_reg_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def configure_signup_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :seller])
  end

  def configure_reg_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :seller])
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
