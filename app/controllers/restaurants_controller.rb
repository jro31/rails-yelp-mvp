class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create

  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
