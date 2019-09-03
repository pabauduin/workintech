class Addcolumntogames < ActiveRecord::Migration[5.2]
  def change
        add_column :games, :difficulty, :integer
  end
end
