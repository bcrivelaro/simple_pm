class Task < ApplicationRecord
  belongs_to :project
  acts_as_list scope: :project

  enum status: {
    not_started: 'not_started',
    in_progress: 'in_progress',
    complete: 'complete'
  }

  validates :name, presence: true
  validates :status, presence: true
end
