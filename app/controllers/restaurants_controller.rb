class RestaurantsController < ApplicationController

  before_action :set_restaurant, only:[:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    all_reviews = Review.all
    @reviews = all_reviews.each do |review|
      review if review.restaurant == @restaurant
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Succes, restaurant added"
    else
      render :new, notice: "Didn't work, try again"
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end