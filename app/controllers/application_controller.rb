class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :user_name, :postal_code, :prefecture_code, :city, :phone_number, :pharmacy_name])
  end

end
