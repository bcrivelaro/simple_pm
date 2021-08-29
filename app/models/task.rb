class Task < ApplicationRecord
  belongs_to :project

  enum status: {
    not_started: 'not_started',
    in_progress: 'in_progress',
    complete: 'complete'
  }
end
