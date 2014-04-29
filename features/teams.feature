Feature:
  In order to assign task to a team
  As Prof. Xavier
  I want to create and manage teams

Background:
  Given PENDING I am Prof. Xavier

Scenario: Create a valid team
  Given I have no teams
  And I am on the start page
  When I follow "create team"
  And I fill "team name" with "Team one"
  And I press "create team"
  Then I see "Team one created"
  And I have 1 team

Scenario: List the teams
  Given I have teams "Team one, Team two"
  And I am on the start page
  Then I see "Team one, Team two"

Scenario: Dissolve a team
  Given I have teams "Team one"
  And I am on the start page
  And I follow "dissolve Team one"
  Then I see "Team one dissolve"
  And I have 0 teams

Scenario: Assign a task to a team
  Given I have teams "Team one"
  And I have one task "Catch magneto"
  And I am on the start page
  And I assign task "Catch magneto" to team "Team one"
  And I have 1 team for task "Catch magneto"