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
    And I attach a photo of the participant on the form 
    And I check the boxes on the form that fit the participant's visibility needs
    When I click 'complete sign in' button
    Given all the fields on the form have been filled (photo is optional)
    Then I'm taken to a 'thank you' page
    Given one or more of the fields are empty
    Then I'm taken given an error pop-up saying a mandatory field is empty
    And the empty field should be highlighted
  