Feature: Manage mutants
	In order to create a team
	As Prof. Xavier 
	I want create and manage mutants

Background:
  Given I am Prof. Xavier

Scenario: Create a valid mutant
  Given I have no mutants
  And I am on the start page
  When I follow "discover mutant"
  And I fill "Mutant name" with "Wolverine"
  And I fill "Special abilities" with "Fast healing, adamantium skeleton, retractable claw"
  And I press "create mutant record"
  Then I see "mutant recorded for Wolverine created"
  And I see "Wolverine"
  And I see "Fast healing, adamantium skeleton, retractable claw"
  And I have 1 mutants

Scenario: List mutants
  Given I have mutants "Wolverine, Storm"
  And I am on the start page
  Then I see "Wolverine"
  And I see "Storm"

Scenario: Abandon mutant
  Given I have mutants "Pyro"
  And I am on the start page
  When I abandon mutant "Pyro"
  Then I see "Pyro is no longer a X-Men"
  And I have 0 mutants

Scenario: Assign a mutant to a team
  Given I have mutants "Wolverine, Storm"
  And I have teams "Team 1"
  When I assign mutant "Wolverine" to team "Team 1"
  Then I see "Wolverine is assigned to Team 1"
  And I have 1 mutant in team "Team 1"