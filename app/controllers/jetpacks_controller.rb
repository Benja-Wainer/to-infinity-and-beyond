class JetpacksController < ApplicationController
  def index
    @jetpacks = Jetpack.all
  end

  def show
    @jetpack = Jetpack.find(params[:id])
  end
end
