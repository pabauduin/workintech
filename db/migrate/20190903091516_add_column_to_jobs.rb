class AddColumnToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :short_description, :text
  end
end
