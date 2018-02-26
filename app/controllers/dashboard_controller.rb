class DashboardController < ApplicationController
  def show
    @mypets = Pet.where(user: current_user)
    @mypetsbooking = Booking.where()
  end
end
