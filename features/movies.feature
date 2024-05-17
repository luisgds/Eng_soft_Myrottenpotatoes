Feature: Manage movies

  Scenario: Add a new movie with valid details
    Given I am on the new movie page
    When I fill in "Title" with "A very long movie title"
    And I select "PG" from "Rating"
    And I fill in "Description" with "A great movie"
    And I select "2024" as the year
    And I select "May" as the month
    And I select "17" as the day
    And I press "Create Movie"
    Then I should see "A very long movie title was successfully created."

  Scenario: Add a new movie with a short title
    Given I am on the new movie page
    When I fill in "Title" with "Short"
    And I select "PG" from "Rating"
    And I fill in "Description" with "A great movie"
    And I select "2024" as the year
    And I select "May" as the month
    And I select "17" as the day
    And I press "Create Movie"
    Then I should see "Title is too short (minimum is 10 characters)"