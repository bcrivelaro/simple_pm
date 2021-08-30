module TasksHelper
  def task_badge_color(task)
    return 'secondary' if task.not_started?
    return 'success' if task.complete?

    'info'
  end
end
