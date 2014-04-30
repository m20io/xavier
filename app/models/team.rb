class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :mutants
  has_many :tasks

  def add_mutants(ids)
    ids.compact.each do |id|
      mutants << Mutant.find(id)
    end
  end
end
