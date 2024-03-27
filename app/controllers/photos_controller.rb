class PhotosController < ApplicationController
  before_action :set_photo, only: %i[edit update destroy]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to users_path, notice: "Photo crée ! ☺"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @photo.update(photo_params)
    redirect_to users_path, notice: "Photo mis à jour ! 😉"
  end

  def destroy
    @photo.destroy
    redirect_to users_path, notice: "Photo supprimé ! 😢"
  end


  private


  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:source, :realisation_id)
  end
end
