@landing
Feature: Landing Page

 Scenario: Non login user validate landing page
    Given User visit "https://eklipse.gg/"
    Then User should see landing page content
    And User should see button get started on Eklipse
