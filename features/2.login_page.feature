@login @eklipse.gg
Feature: Login page

Scenario: User login with valid credentials
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User input password
    And User click on Sign In button
    Then User will redirect to dashboard page

Scenario: User login with invalid credentials
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User input invalid password
    And User click on Sign In button
    Then login failed popup appear
    And login unsuccessful

Scenario: User login with empty password
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User click on Sign In button
    Then User will see tooltip on password field
