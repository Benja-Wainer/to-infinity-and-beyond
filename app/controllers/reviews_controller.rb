class ReviewsController < ApplicationController
  before_action :set_jetpack, only: %i[new create]
  # def new
  #   @jetpack = Jetpack.find(params[:jetpack_id])
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.jetpack = @jetpack
    @review.user = current_user
    if @review.save
      redirect_to jetpack_path(@jetpack)
    else
      render "jetpacks/show", status: :unprocessable_entity
    end
  end

  private

  def set_jetpack
    @jetpack = Jetpack.find(params[:jetpack_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
