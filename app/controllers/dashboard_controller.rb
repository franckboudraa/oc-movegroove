class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_user_has_name

  def index
  end

  private

    def check_if_user_has_name
      if current_user.name.nil?
        redirect_to welcome_path
      end
    end
end
