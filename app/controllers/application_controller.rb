# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :сonfigure_permitted_parameters, if: :devise_controller?

  private

  def сonfigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
