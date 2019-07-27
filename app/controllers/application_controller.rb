class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:cust_last_name, :cust_first_name, :gender, :cust_email_address, :phone,:birth_date, :proxy_last_name, :proxy_first_name, :proxy_email_address])
  end
end
