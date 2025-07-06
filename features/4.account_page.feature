@account @eklipse.gg
Feature: Account Settings Page

Background:
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User input password
    And User click on Sign In button
    Then User will redirect to dashboard page

Scenario: User validate account settings page
    When User is "https://app.eklipse.gg/account" page
    Then User will validate account page
    And User scroll to Profile Settings
    Then User should see credentials placeholder

Scenario: User change name on profile setting sections
    When User is "https://app.eklipse.gg/account" page
    And User scroll to Profile Settings
    And User input name
    When User click on Save Changes button
    Then success popup displayed
