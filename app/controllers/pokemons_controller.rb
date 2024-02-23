class PokemonsController < ApplicationController
  def create
    @pokemon = Pokemon.new(pokemon_params)
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon.trainer = @trainer
    if @pokemon.save
      redirect_to trainer_path(@trainer) #=> /trainers/5346
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to trainer_path(@pokemon.trainer), status: :see_other
  end

  private

  # STRONG_PARAMS
  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url)
  end
end
