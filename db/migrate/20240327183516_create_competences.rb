class CreateCompetences < ActiveRecord::Migration[7.1]
  def change
    create_table :competences do |t|
      t.string :competence
      t.integer :progression
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
