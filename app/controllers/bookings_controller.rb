class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @pet = Pet.find(params[:pet_id])

  end

  def create
    booking = Booking.new(booking_params)
    booking.pet = Pet.find(params[:pet_id])
    booking.user = current_user
    booking.save
    redirect_to dashboard_path(current_user)
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path(current_user)
  end

  def edit
    @booking
    @pet = Pet.find(params[:pet_id])

  end

  def update
    @booking = @booking.update(booking_params)
    redirect_to dashboard_path(current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
