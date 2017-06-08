class CharactersController < ApplicationController

  def index
    @characters = Character.all
    @houses = House.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to houses_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :title, :img_url, :house_id)
  end
end
