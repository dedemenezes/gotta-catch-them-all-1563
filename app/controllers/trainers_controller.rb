class TrainersController < ApplicationController
  def show
    @trainer = Trainer.find(params[:id])
    @pokemon = Pokemon.new
  end
end
