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
    @house = House.create!(house_params.merge(user: current_user))
    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
      @house.destroy
    else
      flash[:alert] = "You do not have permissions to destroy them"
    end
    redirect_to houses_path
  end

  private
  def house_params
    params.require(:house).permit(:name, :words, :region, :img_url)
  end
end
