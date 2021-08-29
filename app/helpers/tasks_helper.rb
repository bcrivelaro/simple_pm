module TasksHelper
  def badge_for(task)
    return 'secondary' if task.not_started?
    return 'success' if task.complete?

    'info'
  end
end
