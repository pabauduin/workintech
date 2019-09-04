class AddColumnToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :name, :string
    add_column :schools, :longitude, :float
    add_column :schools, :latitude, :float
  end
end
