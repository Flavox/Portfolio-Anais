class AddColumnCategorieToRealisations < ActiveRecord::Migration[7.1]
  def change
    add_column :realisations, :categorie, :string
  end
end
