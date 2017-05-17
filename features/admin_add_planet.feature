Feature: Admin adds the Planet
  In order to add the planet
  As a admin
  I want to see the planets page

  Scenario: View planet page
    Given I am on the planet page
    Then I should see "Add Planet"
  Scenario: Go to New Planet page
    Given I am on the planet page
    When I click "Add Planet"
    Then I should see "New Planet"
  Scenario: Create a planet
    Given I am on the Add Planet page
    When I add a new planet
    Then I should see it on the home page
    When I click Planet Name
    Then I should see Link to Earth
    And I should not see Link to Created Planet
  Scenario: Edit a planet
    Given I am on the planet page
    When I click on Edit link
    Then I should see "Editing Planet" title
    When I edit a planet
    Then I should see the changes on the home page
    And I should not see previous version
  Scenario: Destroy a planet
    Given I am on the planet page
    When I click on Destroy link
    Then I should not see destroyed planet name
    And I should not see destroyed planet on the home page