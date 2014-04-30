class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :due_date
      t.integer :team_id
      t.boolean :completed

      t.timestamps
    end
  end
end
