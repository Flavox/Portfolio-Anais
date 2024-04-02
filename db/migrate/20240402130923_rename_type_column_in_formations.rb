class RenameTypeColumnInFormations < ActiveRecord::Migration[7.1]
  def change
    rename_column :formations, :type, :experience
  end
end
