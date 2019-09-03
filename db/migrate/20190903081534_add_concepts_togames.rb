class AddConceptsTogames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :concept, :text
  end
end
