class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception # todo - figure out how to deal with the CSRF tokens 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :name])
  end
end