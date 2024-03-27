class CreateRealisations < ActiveRecord::Migration[7.1]
  def change
    create_table :realisations do |t|
      t.string :titre
      t.text :description
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
