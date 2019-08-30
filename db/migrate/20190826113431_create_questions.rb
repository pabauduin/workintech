class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :answer_1
      t.text :answer_2
      t.integer :value_1
      t.integer :value_2
      t.text :description
      t.timestamps
    end
  end
end
