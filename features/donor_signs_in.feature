Feature: Donor signs in
  A donor signs in on the in-need-org webpage. 
  
Scenario 1: A donor signs in succesfully
    When the donor enters his/her email address and password
    And he/she presses the 'sign in' button
    Given the email address and password are found in the system
    Then he/she is taken to the donor homepage
    
Scenario 2: A donor signs in unsuccesfully, gives wrong password
    When the donor enters his/her email address and password
    And he/she presses the 'sign in' button
    Given password doesn't correspond to the email address in the system
    Then a pop-up with 'Error! Incorrect password' is displayed
    
Scenario 3: A donor signs in unsuccesfully, gives invalid e-mail address
    When the donor enters his/her email address and password
    And he/she presses the 'sign in' button
    Given the email address is not in the system
    Then a pop-up with 'Error! E-mail address not found' is displayed