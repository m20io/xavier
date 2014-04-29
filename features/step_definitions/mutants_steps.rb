Given(/^I am Prof\. Xavier$/) do
  "Make a gentic test to make sure you are Professor X"
end

Given(/^I have no mutants$/) do
  Mutant.delete_all
end

Given(/^I am on the start page$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |link_text|
  click_link link_text
end

When(/^I fill "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I press "(.*?)"$/) do |button_text|
  click_button button_text
end

Then(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Then(/^I have (\d+) mutants$/) do |count|
  expect(Mutant.count).to eql count.to_i
end

Given(/^I have mutants "(.*?)"$/) do |mutants|
  mutants.split(',').each{ |mutant_name| Mutant.create(mutant_name: mutant_name,
   special_abilities: 'most awesome one')}
end

When(/^I abandon mutant "(.*?)"$/) do |name|
  click_link "abandon #{name}"
end

Given(/^I have teams "(.*?)"$/) do |teams|
  teams.split(',').each{ |team_name| Team.create(name: team_name )}
end

When(/^I assign mutant "(.*?)" to team "(.*?)"$/) do |mutant_name, team_name|
  
end

Then(/^I have (\d+) mutant in team "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
