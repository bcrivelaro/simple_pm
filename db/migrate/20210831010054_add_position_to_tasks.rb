class AddPositionToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :position, :integer, null: false

    add_index :tasks, [:project_id, :position], unique: true
  end
end
