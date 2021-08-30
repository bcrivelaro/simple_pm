module ProjectsHelper
  def project_badge_color(project)
    return 'secondary' if project.not_started?
    return 'success' if project.complete?

    'info'
  end
end
