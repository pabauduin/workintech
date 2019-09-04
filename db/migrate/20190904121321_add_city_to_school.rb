class AddCityToSchool < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :city, :string
  end
end
