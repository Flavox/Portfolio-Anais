class AddColumnDetailsToFormations < ActiveRecord::Migration[7.1]
  def change
    add_column :formations, :detail, :string
  end
end
