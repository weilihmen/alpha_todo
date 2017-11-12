class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :note
      t.boolean :done
      t.date :deadline
      t.date :final

      t.timestamps
    end
  end
end
