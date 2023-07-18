class BookingsController < ApplicationController
<<<<<<< HEAD
  def new
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new
=======
  def index
    @bookings = Booking.where(user: current_user)
>>>>>>> 115dfc54ce6c2a716e39c4035632e576d5ea7773
  end

  def create
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new(booking_params)
<<<<<<< HEAD
    @booking.jetpack = @jetpack
    @booking.user = current_user
  end

  def index
    @bookings = Booking.all
  end

  def update
    @booking = Booking.find(booking_params)
    @booking.update(booking_params)
=======
    @booking.status = "Pending"
    @booking.user = current_user
    @booking.jetpack = @jetpack
    if @booking.save
      redirect_to bookings_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
>>>>>>> 115dfc54ce6c2a716e39c4035632e576d5ea7773
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :comment)
  end
end
