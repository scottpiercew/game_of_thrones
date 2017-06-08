class CharactersController < ApplicationController

  def index
    @characters = Character.all
    @houses = House.all
  end

end
