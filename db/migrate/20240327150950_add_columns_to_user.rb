class AddColumnsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
    add_column :users, :telephone, :string
    add_column :users, :adresse, :text
    add_column :users, :introduction, :text
    add_column :users, :emploi_voulu, :string
    add_column :users, :ambition, :text
  end
end
