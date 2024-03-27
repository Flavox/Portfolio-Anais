class BureautiquesController < ApplicationController
  before_action :set_bureautique, only: %i[edit update destroy]

  def new
    @bureautique = Bureautique.new
  end

  def create
    @bureautique = Bureautique.new(bureautique_params)
    @bureautique.user = current_user
    if @bureautique.save
      redirect_to users_path, notice: "Bureautique crée ! ☺"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bureautique.update(bureautique_params)
    redirect_to users_path, notice: "Bureautique mis à jour ! 😉"
  end

  def destroy
    @bureautique.destroy
    redirect_to users_path, notice: "Bureautique supprimé ! 😢"
  end


  private


  def set_bureautique
    @bureautique = Bureautique.find(params[:id])
  end

  def bureautique_params
    params.require(:bureautique).permit(:outil, :progression)
  end
end
