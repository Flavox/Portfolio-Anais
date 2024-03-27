class UsersController < ApplicationController
  # before_action :set_user, only: [:edit, :update]
  # before_action :authenticate_user!, only: [:edit, :update]

  def index
    @realisations = Realisation.all
    @photos = Photo.all
    @formations = Formation.all
    @competences = Competence.all
    @bureautiques = Bureautique.all
  end

  def home
    @anais = User.first
  end

  def cv
    @formations = Formation.all
    @competences = Competence.all
    @bureautiques = Bureautique.all
  end

  # def loisirs
  # end

  def contact
    @anais = User.first
  end
end
