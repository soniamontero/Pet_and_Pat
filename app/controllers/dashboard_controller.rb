class DashboardController < ApplicationController
  def show
    @upcoming_bookings = Booking.where(user_id: current_user.id).where("end_date > ?",  Date.today)
    @bookings_needing_review = get_bookings_needing_review
    @mypets = Pet.where(user: current_user)
  end

  def get_bookings_needing_review
    all_bookings = Booking.where(user_id: current_user.id)
    bookings_needing_review = []
    past_bookings = all_bookings.where("end_date < ?",  Date.today)
    reviews = Review.all
    past_bookings.each do |booking|
      reviews.each do |review|
        if !review.booking_id == booking.id
          binding.pry
          bookings_needing_review << booking
        end
      end
    end
    return bookings_needing_review
  end
end
