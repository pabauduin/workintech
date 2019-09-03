class AddColumnTypeJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :type, :text
  end
end
