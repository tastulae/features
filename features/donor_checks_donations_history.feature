Feature: Donor checks his/her donation history
  Starting from the donor homepage, a donor checks his donation history.
  
Scenario 1: On the donor homepage, the donor presses the past donations button
    Given the donor has signed in
    And is on the donor homepage
    When he/she presses the 'view past donations button'
    Then he/she is taken to 'view past donations' page
    Given he/she has made past donations
    When he/she presses the 'view profile' button
    Then he/she can view the profile page of the participant he/she has donated to
