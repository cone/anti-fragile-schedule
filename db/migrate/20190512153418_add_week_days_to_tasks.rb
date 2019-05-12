class AddWeekDaysToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :week_days, :string
  end
end
