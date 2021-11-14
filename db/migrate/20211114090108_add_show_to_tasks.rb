class AddShowToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :visible, :boolean
  end
end
