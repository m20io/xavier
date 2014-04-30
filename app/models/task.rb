class Task < ActiveRecord::Base
  validates :description, presence: true
  validates :due_date, presence: true
  validate :due_date_cannot_be_in_the_past, on: [:create]

  def due_date_cannot_be_in_the_past
    if due_date.present? && due_date < DateTime.current
      errors.add(:due_date, 'can\'t be in past')
    end
  end

  belongs_to :team

  def team_name
    team.name if team.present?
  end

  def completed?
    completed
  end
end

