Feature: sign in to the app

  Scenario: prompt to sign in
    Given I am not signed in
    When I visit the sign on page
    Then I am promted to sign in

  Scenario: sign in with existing account
    Given I have an existing account
    When I sign in
    Then I see confirmation of my sign in
