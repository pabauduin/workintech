class ChangeColumnTypeJobsToIndic < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :type, :string
    rename_column :jobs, :type, :job_type
  end
end
