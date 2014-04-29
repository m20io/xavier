class Team < ActiveRecord::Base
  validates :name, presence: true

  has_many :mutants
end
