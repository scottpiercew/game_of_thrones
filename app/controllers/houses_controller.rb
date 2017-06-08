class HousesController < ApplicationController

  def index
    @houses = House.all
    @characters = Character.all
  end

  def show
    @house = House.find(params[:id])
  end
end
