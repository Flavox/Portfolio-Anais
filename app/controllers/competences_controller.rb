class CompetencesController < ApplicationController
  before_action :set_competence, only: %i[edit update destroy]

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.new(competence_params)
    @competence.user = current_user
    if @competence.save
      redirect_to users_path, notice: "Competence crée ! ☺"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @competence.update(competence_params)
    redirect_to users_path, notice: "Competence mis à jour ! 😉"
  end

  def destroy
    @competence.destroy
    redirect_to users_path, notice: "Competence supprimé ! 😢"
  end


  private


  def set_competence
    @competence = Competence.find(params[:id])
  end

  def competence_params
    params.require(:competence).permit(:competence, :progression)
  end
end
