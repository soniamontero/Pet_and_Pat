class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    binding.pry
  end

  def create
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.content = params[:review][:content]
    @review.rating = params[:review][:rating]
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end
end


class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5) }

end
