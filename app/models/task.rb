class Task < ApplicationRecord
  validates :description, presence: true
  belongs_to :user, optional: true, foreign_key: "user_id"
  has_many :comments, dependent: :destroy
  before_validation :assign_description, unless: :description_present
  after_create :log_task_details

  def assign_description
    self.description = 'add description to task '
  end

  def description_present
    self.description.present?
  end

  def log_task_details
    TaskLoggerJob.perform_later(self)
  end
end