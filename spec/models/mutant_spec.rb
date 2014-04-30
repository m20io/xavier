require 'spec_helper'

describe Mutant do
  let(:rogue) { Mutant.new(mutant_name: 'Rogue', special_abilities: 'absorbing power') }
  it 'is valid with a mutant name and one specical ability' do
    expect(rogue).to be_valid
  end

  it 'creates a custom error if no special ability is given' do
    mutant = Mutant.new(mutant_name: 'regular guy', special_abilities: '')
    expect(mutant).not_to be_valid
  end

  it 'can have a team' do
    team = Team.new(name: "Alpha Team")
    rogue.team = team
    rogue.save

    expect(rogue.team).to eql team
  end

  it 'returns nothing for the team name if no team is present' do
    expect(rogue.team_name).to eql nil
  end
end
