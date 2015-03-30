Feature: Sign Up
  As a person in need
  In order to benefit from in-need.org
  A participant is signed up by a helper

  Scenario 1: Participant is signed up by a "helper" in person using the helper's device
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    Then I enter the participant's name on the form 
    And I enter the participant's story
    And I enter any specialized groups the participant belongs to (veteran, christian etc.)
    And I attach a photo of the participant on the form 
    And I check the boxes on the form that fit the participant's visibility needs
    And I take the finger print of the participant (right index?) with the finger print reader
    When I click 'complete sign in' button
    Then I'm taken to a 'thank you' page
    
    Scenario 2: Participant is signed up by a "helper" in person using the helper's device but several fields are left empty
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    Then I enter the participant's name on the form 
    And I attach a photo of the participant on the form (optional)
    And I check the boxes on the form that fit the participant's visibility needs
    And I take the finger print of the participant (right index?) with the finger print reader
    When I click 'complete sign in' button
    Then I'm taken given an error pop-up saying there are empty mandatory fields
    And the empty fields should be highlighted
    
    Scenario 3: Participant is signed up by a "helper" in person using the helper's device but one of the fields is left empty
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    Then I enter the participant's name on the form 
    And I enter any specialized groups the participant belongs to (none, veteran, christian etc.)
    And I attach a photo of the participant on the form (optional)
    And I check the boxes on the form that fit the participant's visibility needs
    And I take the finger print of the participant (right index?) with the finger print reader
    When I click 'complete sign in' button
    Then I'm taken given an error pop-up saying a mandatory field is empty
    And the empty field should be highlighted
    
    Scenario 4: Participant is signed up by a "helper" in person using the helper's device but the finger print is not taken
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    Then I enter the participant's name on the form 
    And I enter any specialized groups the participant belongs to (none, veteran, christian etc.)
    And I attach a photo of the participant on the form (optional)
    And I check the boxes on the form that fit the participant's visibility needs
    When I click 'complete sign in' button
    Then I'm taken given an error pop-up saying taking a finger print is mandatory
    
    
  