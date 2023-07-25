class JetpacksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_jetpack, only: [:show]

  def index
    @jetpacks = policy_scope(Jetpack)
  end

  def show
    authorize @jetpack
    @jetpack = Jetpack.find(params[:id])
    @booking = Booking.new
  end

  def new
    @jetpack = Jetpack.new
    authorize @jetpack
  end

  def create
    @jetpack = Jetpack.new(jetpack_params)
    @jetpack.user = current_user
    authorize @jetpack
    if @jetpack.save
      redirect_to jetpacks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @jetpack
  end

  def update
    authorize @jetpack
    if @jetpack.update(jetpack_params)
      redirect_to jetpack_path(@jetpacl)
    else
      render :edit, status: ;unprocessable_entity
    end
  end

  def destroy
    authorize @jetpack
    @jetpack.destroy
    redirect_to jetpacks_path, status: :see_other
  end

  private

  def set_jetpack
    @jetpack = Jetpack.find(params[:id])
  end

  def jetpack_params
    params.require(:jetpack).permit(:title, :model, :price, :description, :photo)
  end
end
