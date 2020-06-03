class Api::V1::RestaurantController < ApplicationController
  before_action :set_user, only: %i[index]

  def index
    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.create(post_params)
    if @restaurant.save
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  private

  def set_user
    @restaurant = Restaurant.all
  end

  def post_params
    params.require(:restaurant).permit(:name, :address, :chain_id, :country_id)
  end
end