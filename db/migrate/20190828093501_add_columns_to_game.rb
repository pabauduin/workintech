class AddColumnsToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :variable1, :string
    add_column :games, :variable2, :string
    add_column :games, :variable3, :string
    add_column :games, :background_image, :string
    add_column :games, :action_image, :string
  end
end
