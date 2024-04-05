class Photo < ApplicationRecord
  belongs_to :realisation
  after_create :move_uploaded_file

  def move_uploaded_file
    realisation = Realisation.find_by(id: self.realisation_id)
    image_path = Rails.root.join('app', 'assets', 'images', realisation.titre.parameterize, File.basename(source))
    FileUtils.mkdir_p(File.dirname(image_path))
    source_file = File.open(source) # Ouvrez le fichier pour obtenir l'objet ActionDispatch::Http::UploadedFile
    FileUtils.mv(source_file.path, image_path)
  end

end
