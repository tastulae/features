Feature: Donor signs up
  A donor signs up on the in-need-org webpage. 
  
Scenario 1: The donor signs up at in-need-org
    When the donor presses sign up icon
    Then he/she is taken to a sign up page
    Given he/she enters information in all the required fields
    When he/she presses the 'finish signing up' button
    Then he/she is taken to the donor
    
Scenario 2: The donor signs up at in-need-org but doesn't fill in all the required fields
    When the donor presses sign up icon
    Then he/she is taken to a sign up page
    Given he/she hasn't entered information in all the required fields
    When he/she presses the 'finish signing up' button
    Then he/she is shown an error pop-up saying 'error! mandatory information missing'
    And the field with missing information is highlighted
    
Scenario 3: The donor signs up at in-need-org but the e-mail address is already used
    When the donor presses sign up icon
    Then he/she is taken to a sign up page
    Given he/she enters information in all the required fields
    Given the given e-mail address is already in the system
    When he/she presses the 'finish signing up' button
    Then he/she is shown an error pop-up saying 'error! The given e-mail address is already in use'
 
Scenario 3: The donor signs up at in-need-org but the password is already taken
    When the donor presses sign up icon
    Then he/she is taken to a sign up page
    Given he/she enters information in all the required fields
    Given the given password is already in the system
    When he/she presses the 'finish signing up' button
    Then he/she is shown an error pop-up saying 'error! The given pass word is already taken'
 