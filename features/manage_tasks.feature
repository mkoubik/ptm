Feature: Manage tasks
  In order Don't forget tasks
  I want to create and manage tasks

  Scenario: List tasks
    Given I have tasks titled "Do the homework", "Call John"
    When I go to the list of tasks
    Then I should see "Do the homework"
    And I should see "Call John"

  Scenario: Create valid task
    Given I have no tasks
    And I am on the list of tasks
    When I follow "New Task"
    And I fill in "Title" with "Do the shopping"
    And I fill in "Comment" with "Buy potatoes"
    And I press "Create"
    Then I should see "New task created."
    And I should see "Do the shopping"
    And I should see "Buy potatoes"
    And I should have 1 task

  Scenario: Finish existing task
    Given I have task titled "Existing task"
    And I am on the list of tasks
    When I finish task "Existing task"
    Then I should see "Task finished."
    And I should not see "Existing task"
