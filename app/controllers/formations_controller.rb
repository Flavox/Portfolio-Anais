class FormationsController < ApplicationController
  before_action :set_formation, only: %i[edit update destroy]

  def new
    @formation = Formation.new
  end

  def create
    @formation = Formation.new(formation_params)
    @formation.user = current_user
    if @formation.save
      redirect_to users_path, notice: "Formation crée ! ☺"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @formation.update(formation_params)
    redirect_to users_path, notice: "Formation mis à jour ! 😉"
  end

  def destroy
    @formation.destroy
    redirect_to users_path, notice: "Formation supprimé ! 😢"
  end


  private


  def set_formation
    @formation = Formation.find(params[:id])
  end

  def formation_params
    params.require(:formation).permit(:annee_debut, :annee_fin, :emploi, :organisation, :ville, :detail, :experience)
  end
end
