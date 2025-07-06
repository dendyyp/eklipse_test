@ai-edit @eklipse.gg
Feature: AI Video Editing Platform

Background:
    Given User is in "https://app.eklipse.gg/login" page
    When User input email
    And User input password
    And User click on Sign In button
    Then User will redirect to dashboard page

Scenario: User successfully navigates to the AI Edit page
    When User clicks on the Edits menu
    Then User should see the Edit your Clip with AI Edit section
    And User should see the Start AI Edit button

Scenario: User initiates AI editing process
    When User clicks on the Edits menu
    Then User should see the Edit your Clip with AI Edit section
    And User clicks the Start AI Edit button
    And User click start button on modal
    Then User should see the clip editing interface