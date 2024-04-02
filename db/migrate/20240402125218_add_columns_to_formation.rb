class AddColumnsToFormation < ActiveRecord::Migration[7.1]
  def change
    add_column :formations, :type, :string
  end
end
