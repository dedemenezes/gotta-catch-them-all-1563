class PokemonTypesController < ApplicationController
  def new
    # 1. Find the parent! In this case pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
    # 2. Instantiate the empty child, in this case, PokemonType
    @pokemon_type = PokemonType.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    # @pokemon_type = PokemonType.new
    # @type = Type.find(params[:pokemon_type][:type])
    # @pokemon_type.type = @type
    # @pokemon_type.pokemon = @pokemon
    # Below, AFTER USING MULTIPLE TYPES
    types = Type.where(id: params[:pokemon_type][:type])
    types.each do |type|
      pokemon_type = PokemonType.new(type: type, pokemon: @pokemon)
      pokemon_type.save
    end

    redirect_to trainer_path(@pokemon.trainer)
  end

  private

  def pokemon_type_params
    params.require(:pokemon_type).permit(:type)
  end
end
