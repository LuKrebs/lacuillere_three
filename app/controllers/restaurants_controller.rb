class RestaurantsController < ApplicationController
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "City, London", category: "japanese" }
  ]

  def index
    if (params[:food_type] == "") || (params[:food_type] == nil)
      @restaurants = RESTAURANTS
    else
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |r| r[:category] == @category }
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
