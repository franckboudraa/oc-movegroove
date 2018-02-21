class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_user_has_name

  def index
    # BMI formula = weight (kg) ÷ height2 (m2)

    @bmi = (current_user.weight / (current_user.height.to_f / 100)**2).to_i
  end

  private

    def check_if_user_has_name
      if current_user.name.nil?
        redirect_to welcome_path
      end
    end
end
