Given(/^I have no tasks$/) do
  Task.delete_all
end

When(/^I assign task "(.*?)" to team "(.*?)"$/) do |task_description, team_name|
  task = Task.find_by_description(task_description)
  within(:css, "form#edit_task_#{task.id}") do
    select(team_name)
    click_button 'assign team'
  end
end

Then(/^I have (\d+) team for task "(.*?)"$/) do |count, task_description|
  task = Task.find_by_description(task_description)
  expect(task.team.tasks.count).to eql count.to_i
end

When(/^I select due date as tomorrow$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I have (\d+) tasks$/) do |count|
  expect(Task.count).to eql count.to_i
end