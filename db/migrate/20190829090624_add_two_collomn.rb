class AddTwoCollomn < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :logo, :string
    add_column :games, :instructions, :string
  end
end
