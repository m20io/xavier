class Mutant < ActiveRecord::Base
  validates :mutant_name, presence: true
  validates :special_abilities, presence: { message: "If you don't have a speical abilities your are not a mutant." }

  belongs_to :team

  def team_name
    team.name if team.present?
  end
end
