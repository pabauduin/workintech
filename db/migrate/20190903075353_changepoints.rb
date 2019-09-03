class Changepoints < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :points, :string
  end
end
