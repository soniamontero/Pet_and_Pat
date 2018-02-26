class DashboardController < ApplicationController
  def show
    @mypets = Pet.where(user: current_user)

  end
end
