# frozen_string_literal: true

class TasksReflex < ApplicationReflex
  def sort(task_id, new_position, status = nil)
    task = Task.find(task_id)
    task.update(status: status) if status.present?
    task.insert_at(new_position)
  end
end
