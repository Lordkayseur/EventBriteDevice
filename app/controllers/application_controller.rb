class ApplicationController < ActionController::Base
  before_action :config_dev_parameters, if: :devise_controller?

  def config_devise_parameters
    devise_parameter_sanatizer.permit(sign_up) { |u| u.permit(:username, :email, :password, :password_confimartion) }
  end
end
