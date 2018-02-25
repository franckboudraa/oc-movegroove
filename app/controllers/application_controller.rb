class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_if_user_miss_props
    if current_user.name.nil? || current_user.weight.nil? || current_user.height.nil?
      redirect_to welcome_path
    end
  end
end
