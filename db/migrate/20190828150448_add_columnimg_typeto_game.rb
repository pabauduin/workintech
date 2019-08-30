class AddColumnimgTypetoGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :game_type_image, :string
  end
end
