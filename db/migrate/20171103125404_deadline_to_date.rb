class DeadlineToDate < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :deadline, :date
  	change_column :tasks, :final, :date
  end
end
