class Task < ApplicationRecord
  validates :description, presence: true
  belongs_to :user, optional: true
  before_validation :assign_description, unless: :description_present

  def assign_description
    self.description = 'add description to task '
  end

  def description_present
    self.description.present?
  end
end