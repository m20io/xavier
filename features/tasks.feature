Feature:
  In order to control the x-men
  As Prof. Xavier
  I want to create and finish tasks

Background:
  Given I am Prof. Xavier

Scenario: Create a valid task
  Given I have on tasks
  And I am on the start page
  When I follow "create task"
  And I fill "task name" with "Catch Magneto"
  And I select due date as tomorrow
  Then I see "task Catch Magneto created"
  And I have 1 tasks

Scenario: List task
  Given I have tasks "Catch Magneto, Buy milk"
  And I am on the start page
  Then I see "Catch Magneto"
  And I see "Buy milk"
  And I see "Catch Magneto" is due before "Buy milk"

Scenario: Complete task
  Given I have tasks "Catch Magneto"
  And I am on the start page
  When I follow "completed"
  Then I see "Task Catch Magneto is completed"
  And I see "Catch Magneto" is crossed out
  And I see the tasks are sorted by there due date with the closest