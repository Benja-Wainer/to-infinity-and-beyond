class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]

  def index
    @outgoing_bookings = Booking.where(user: current_user)
    @user_jetpacks = current_user.jetpacks
    @incoming_bookings = @user_jetpacks.map { |jetpack| jetpack.bookings }.flatten
  end

  def create
    @jetpack = Jetpack.find(params[:jetpack_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.jetpack = @jetpack
    if @booking.save
      redirect_to bookings_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_index_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @booking.destroy
    redirect_to bookings_index_path, status: :see_other
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      # redirect_to # up to you...
      redirect_to bookings_index_path
    else
      # render # where was the booking update form?
      render :update, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :booking_date, :comment)
  end
end
