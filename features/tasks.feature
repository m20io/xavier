Feature:
  In order to control the x-men
  As Prof. Xavier
  I want to create and finish tasks

Background:
  Given I am Prof. Xavier

Scenario: Create a valid task
  Given I have no tasks
  And I am on the start page
  When I follow "create task"
  And I fill "Description" with "Catch Magneto"
  And I select due date as tomorrow
  And I press "create task"
  Then I see "Task Catch Magneto created"
  And I have 1 tasks

Scenario: List task
  Given I have tasks "Catch Magneto, Buy milk"
  And I am on the start page
  Then I see "Catch Magneto"
  And I see "Buy milk"

Scenario: Assign a task to a team
  Given I have teams "Alpha Team"
  And I have tasks "Catch magneto"
  And I am on the start page
  When I assign task "Catch magneto" to team "Alpha Team"
  Then I have 1 team for task "Catch magneto"

Scenario: Complete task
  Given I have tasks "Catch Magneto"
  And I am on the start page
  When I press "complete"
  Then I see "Task Catch Magneto is completed"