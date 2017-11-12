class SetTaskdoneDefaul2 < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :done, :boolean, :default => false
  end
end
