class AddNewColumnsToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :solution_variable1, :string
    add_column :games, :solution_variable2, :string
    add_column :games, :solution_variable3, :string
  end
end
