class CreateBureautiques < ActiveRecord::Migration[7.1]
  def change
    create_table :bureautiques do |t|
      t.string :outil
      t.integer :progression
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
