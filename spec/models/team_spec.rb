require 'spec_helper'

describe Team do
  it 'is not valid without a name' do
    team = Team.new(name: '')
    expect(team).not_to be_valid
  end

  it 'has mutants' do
    team = Team.new(name: 'Alpha Team')
    storm = Mutant.create(mutant_name:'Storm', special_abilities: 'Make wind')
    team.mutants << storm
    team.save

    expect(Team.find(team.id).mutants).to include storm
  end
end
