# frozen_string_literal: true

class TasksReflex < ApplicationReflex
  def sort(task_id, new_position)
    task = Task.find(task_id)
    task.insert_at(new_position)
  end
end
