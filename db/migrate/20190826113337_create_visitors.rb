class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :gender
      t.string :uuid

      t.timestamps
    end
  end
end
