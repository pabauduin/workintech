class RemoveVisitorToForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :visitor_id
  end
end
