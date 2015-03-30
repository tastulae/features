Feature: Sign Up
  As a person in need
  In order to benefit from in-need.org
  I sign up as a participant

  Scenario: 1. Participant is signed up by a "helper" in person using the helper's device
    Given I am registered helper that has logged in
    When I indicate I want to sign up a new participant
    Then I am taken to the new participant sign up form
    
  # Scenario: 2. Participant discovers and uses kiosk to sign up (may or may not start with physical "token")
  # Scenario: 4. Participant uses a public device (ie: library) to sign up via the web (depending on fingerprint capability)
  # Scenario: 3. Participant is grandfathered in from some pre-existing arrangement