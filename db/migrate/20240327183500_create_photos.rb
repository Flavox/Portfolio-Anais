class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.string :source
      t.references :realisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
