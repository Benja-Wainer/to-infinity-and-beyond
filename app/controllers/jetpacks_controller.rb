class JetpacksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_jetpack, only: [:show]

  def index
    if params[:query].present?
      @jetpacks = Jetpack.search_by_model_and_description(params[:query])
    else
      @jetpacks = Jetpack.all
    end
  end

  def show
    @jetpack = Jetpack.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def new
    @jetpack = Jetpack.new
  end

  def create
    @jetpack = Jetpack.new(jetpack_params)
    @jetpack.user = current_user
    if @jetpack.save
      redirect_to jetpacks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_jetpack
    @jetpack = Jetpack.find(params[:id])
  end

  def jetpack_params
    params.require(:jetpack).permit(:title, :model, :price, :description, :photo)
  end
end
