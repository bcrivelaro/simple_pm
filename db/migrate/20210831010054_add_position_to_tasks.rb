class AddPositionToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :position, :integer, null: false, default: 0
  end
end
