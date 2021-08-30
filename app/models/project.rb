class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user

  validates :name, presence: true

  def percentage_complete
    return 0 if tasks.count.zero?

    (tasks.complete.count.to_f / tasks.count.to_f) * 100
  end

  def total_tasks_complete
    tasks.complete.count
  end

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in_progress'
  end

  def not_started?
    status == 'not_started'
  end

  def status
    return 'not_started' if (tasks.all?(&:not_started?) || tasks.count.zero?)
    return 'complete' if tasks.all?(&:complete?)

    'in_progress'
  end
end
