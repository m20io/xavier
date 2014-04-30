Given(/^I have no teams$/) do
  Team.delete_all
end

Then(/^I have (\d+) teams$/) do |team_names|
  team_names.split(',').each { |tn| Team.create(name: tn) }
end

When(/^I dissolve team "(.*?)"$/) do |team_name|
  find(:xpath, "//tr[contains(.,'#{team_name}')]/td/a", text: 'dissolve').click
end

Given(/^I have tasks "(.*?)"$/) do |task_descriptions|
  task_descriptions.split(',').each do |description|
    Task.create(description: description, due_date: Date.tomorrow)
  end
end

Then(/^I have (\d+) team$/) do |count|
  expect(Team.count).to eql count.to_i
end


