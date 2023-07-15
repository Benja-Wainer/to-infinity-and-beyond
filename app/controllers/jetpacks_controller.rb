class JetpacksController < ApplicationController
  before_action :set_jetpack, only: [:show]

  def index
    @jetpacks = Jetpack.all
  end

  def show
    @jetpack = Jetpack.find(params[:id])
  end

  def new
    @jetpack = Jetpck.new
  end

  def create
    @jetpack = Jetpack.new(jetpack_params)
    if @jetpack.save
      redirect_to index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_jetpack
    @jetpack = Jetpack.find(params[:id])
  end

  def jetpack_params
    params.require(:jetpack).permit(:title, :model, :price, :description)
  end
end
