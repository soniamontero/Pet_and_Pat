class BookingsController < ApplicationController



  def new
    @booking = Booking.new
    @pet = Pet.find(params[:pet_id])

  end

  def create
    booking = Booking.new(start_date: start_date, end_date: end_date)
    booking.save
    redirect_to root_path
  end

  def edit
  end

  def show
  end

  def start_date
   year = params[:booking]["start_date(1i)"].to_i
   month = params[:booking]["start_date(2i)"].to_i
   day = params[:booking]["start_date(3i)"].to_i
    start = Date.new(year, month, day)
  end

  def end_date
    year = params[:booking]["end_date(1i)"].to_i
    month = params[:booking]["end_date(2i)"].to_i
    day = params[:booking]["end_date(3i)"].to_i
    end_d = Date.new(year, month, day)
  end
end
