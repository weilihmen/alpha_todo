class SetTaskdoneDefault < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :done, :boolean, :defualt => true
  end
end
