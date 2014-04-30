require 'spec_helper'

describe Task do
  it 'is not valid with no description' do
    task = Task.new(due_date: Date.tomorrow)
    expect(task).not_to be_valid
  end

  it 'is not valid with no due_date' do
    task = Task.new(description: 'Catch Magneto')
    expect(task).not_to be_valid
  end

  it 'is not valid with a due date in the past' do
    task = Task.new(description: 'Catch Magneto', due_date: DateTime.current + 1.seconds)
    expect(task).not_to be_valid
  end
end
