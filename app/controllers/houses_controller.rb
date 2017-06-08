class HousesController < ApplicationController

  def index
    @houses = House.all
    @characters = Character.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create!(house_params)
    redirect_to house_path(@house)
  end

  private
  def house_params
    params.require(:house).permit(:name, :words, :region, :img_url)
  end
end
