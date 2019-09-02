class CreateRecommandations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommandations do |t|

      t.timestamps
    end
  end
end
