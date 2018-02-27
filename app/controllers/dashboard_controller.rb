class DashboardController < ApplicationController
  def show
    @upcoming_bookings = Booking.where(user_id: current_user.id).where("end_date > ?",  Date.today)
    @bookings_needing_review = get_bookings_needing_review
    @mypets = Pet.where(user: current_user)
  end

  def get_bookings_needing_review
    past_bookings = current_user.bookings.where("end_date < ?", Date.today)
    reviews = Review.all
    bookings_needing_review = past_bookings.map do |booking|
        booking unless booking.reviewed?
    end
    bookings_needing_review.compact
  end
end

