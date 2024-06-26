class RealisationsController < ApplicationController
  before_action :set_realisation, only: %i[edit update destroy]

  def new
    @realisation = Realisation.new
  end

  def create
    @realisation = Realisation.new(realisation_params)
    @realisation.user = current_user
    if @realisation.save
      redirect_to users_path, notice: "Réalisation crée ! ☺"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @realisation.update(realisation_params)
    redirect_to users_path, notice: "Réalisation mis à jour ! 😉"
  end

  def destroy
    @realisation.destroy
    redirect_to users_path, notice: "Réalisation supprimé ! 😢"
  end

  def etudes
    @realisations_etude = Realisation.where(categorie: 'etude')
  end

  def experiences_pro
    @realisations_pro = Realisation.where(categorie: 'experience pro')
  end


  private


  def set_realisation
    @realisation = Realisation.find(params[:id])
  end

  def realisation_params
    params.require(:realisation).permit(:titre, :description, :date, :categorie, photos: [])
  end
end
