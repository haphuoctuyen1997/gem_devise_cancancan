class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :name, :address, :phone, :email,:password, :password_confirmation, :remember_me, roles: []) }
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit( :name, :address, :phone, :email,:password, :password_confirmation, :remember_me, roles: [])
    end

    # devise_parameter_sanitizer.permit(:account_update) do |user_params|
    #   user_params.permit(:name, :address, :phone, :email, :password, :current_password, :remember_me)
    # end
    # devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :address, :phone, :email, :password, :remember_me)}

    # devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
    # devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :address, :phone, :email, :password, :remember_me)}
  end
end
