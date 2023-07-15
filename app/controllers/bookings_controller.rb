class BookingsController < ApplicationController
  def new
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new
  end

  def create
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new(booking_params)
    @booking.jetpack = @jetpack
    @booking.user = current_user
  end

  def index
    @bookings = Booking.all
  end

  def update
    @booking = Booking.find(booking_params)
    @booking.update(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :comment)
  end
end
