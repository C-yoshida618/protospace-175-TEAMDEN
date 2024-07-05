class PrototypesController < ApplicationController

  def index
    #@protoyupes = Prototype.all
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:password, :password_confirmation, :name, :profile, :occupation, :position])
  end
end
