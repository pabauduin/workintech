class AddColumnGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :description, :text
    add_column :games, :short_description, :text
  end
end
