class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.user = current_user
    @booking.jetpack = @jetpack
    if @booking.save
      redirect_to bookings_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :comment)
  end
end
