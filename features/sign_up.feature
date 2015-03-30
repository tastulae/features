Feature: Sign Up
  As a person in need
  In order to benefit from in-need.org
  A participant is signed up by a helper

  Scenario: Participant is signed up by a "helper" in person using the helper's device
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    Then I enter the participant's name on the form 
    And I enter the participant's story
    And I enter any specialized groups the participant belongs to (veteran, christian etc.)
    Given the participant agrees
    Then I attach a photo of the participant on the form 
    When I click 'complete sign in' button
    Then I'm taken to a 'thank you' page
  