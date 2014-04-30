Feature:
  In order to assign task to a team
  As Prof. Xavier
  I want to create and manage teams

Background:
  Given I am Prof. Xavier

Scenario: Create a valid team
  Given I have no teams
  And I am on the start page
  When I follow "create team"
  And I fill "Name" with "Alpha Team"
  And I press "create team"
  Then I see "Team Alpha Team created."
  And I have 1 team

Scenario: List the teams
  Given I have teams "Alpha Team, Beta Team"
  And I am on the start page
  Then I see "Alpha Team"
  And I see "Beta Team"

Scenario: Dissolve a team
  Given I have teams "Alpha Team"
  And I am on the start page
  When I dissolve team "Alpha Team"
  Then I see "Team 'Alpha Team' has been dissolved."
  And I have 0 teams