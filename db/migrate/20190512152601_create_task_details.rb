class CreateTaskDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :task_details do |t|
      t.references :task, foreign_key: true
      t.date :finished_date
      t.text :note

      t.timestamps
    end
  end
end
