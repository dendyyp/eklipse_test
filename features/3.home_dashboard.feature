@home @eklipse.gg
Feature: Home Dashboard after login

Background:
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User input password
    And User click on Sign In button
    Then User will redirect to dashboard page

Scenario: User validate claim Offer popup
    When User click on Claim Offer
    Then User should see claim offer modal
    And User click Close icon to dismiss modal

Scenario: User validate connect to new account popup
    When User click Connect widget
    Then User will see options to Connect new account

Scenario: User validate generate from external source popup
    When User click Generate widget
    Then User will see import stream source
