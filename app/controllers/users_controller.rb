class UsersController < ApplicationController
  # before_action :set_user, only: [:edit, :update]
  before_action :authenticate_user!, only: [:index]

  def index
    @realisations = Realisation.all
    @competences = Competence.all
    @bureautiques = Bureautique.all
    @formations_sans_type = Formation.where(experience: '')
    @formations = Formation.where(experience: 'formation')
    @stages = Formation.where(experience: 'stage')
    @experiences_pro = Formation.where(experience: 'experience pro')
  end

  def home
    @anais = User.first
  end

  def cv
    @competences = Competence.all
    @bureautiques = Bureautique.all
    @formations = Formation.where(experience: 'formation').order(annee_fin: :desc)
    @stages = Formation.where(experience: 'stage').order(annee_fin: :desc)
    @experiences_pro = Formation.where(experience: 'experience pro').order(annee_fin: :desc)
  end

  # def loisirs
  # end

  def contact
    @anais = User.first
  end
end
