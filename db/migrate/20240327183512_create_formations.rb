class CreateFormations < ActiveRecord::Migration[7.1]
  def change
    create_table :formations do |t|
      t.date :annee_debut
      t.date :annee_fin
      t.string :emploi
      t.string :organisation
      t.string :ville
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
