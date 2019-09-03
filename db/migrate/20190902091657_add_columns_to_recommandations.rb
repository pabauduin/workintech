class AddColumnsToRecommandations < ActiveRecord::Migration[5.2]
  def change
    add_column :recommandations, :name, :string
    add_column :recommandations, :age, :string
    add_column :recommandations, :genre, :string
    add_column :recommandations, :origine, :string
    add_column :recommandations, :image, :string
  end
end
