require 'spec_helper'

describe Mutant do
  it 'is valid with a mutant name and one specical ability' do
    mutant = Mutant.new(mutant_name: 'Rogue', special_abilities: 'absorbing power')
    expect(mutant).to be_valid
  end

  it 'creates a custom error if no special ability is given' do
    mutant = Mutant.new(mutant_name: 'regular guy', special_abilities: '')
    expect(mutant).not_to be_valid
  end

end
