Feature: Participant checks donations
  The participant of in-need-org goes to a kiosk with an iPad
  
Scenario 1: The participant uses the kiosk to check his/her donations
  Given a right index finger(?) is pressed on the finger print reader
  When the finger print is found in the system archives
  Then I'm shown a welcome screen with a list of all my donations with touchable icons and a signout icon.
    
Scenario 2: The participant uses the kiosk to check his/her donations
  Given a right index finger(?) is pressed on the finger print reader
  When the finger print is not found in the system archives
  Then I'm shown an error screen saying that right index finger is needed for signing in
  
Scenario 3: The participant has cash donations as indicated by $ icon on the home screen
  Given the participant is logged in
  When he/she presses the $ icon
  Then he/she is taken to a page that displays the current amount of cash donations and has two icons: 'back to home screen' and 'find a participating store'
  When he/she presses back to donations
  Then he/she is taken to the home screen
  When he/she presses the $ icon 
  Then he/she is taken to a page that displays the current amount of cash donations has two icons: 'back to home screen' and 'find a participating store'
  When he/she presses 'find a participating store'
  Then he/she is shown a screen with a list of participating stores for cash donations on the left side of the screen and a map of the city (centered at kiosk) in dicating the location of each store. There is also a 'back to your donation'
  When he/she presses the 'back to donations' button
  Then he/she is taken to the page that displays the current amount of cash donations has two icons: 'back to home screen' and 'find a participating store'
  When he/she presses 'back to home screen'
  Then he/she is taken to the home screen
  When he/she presses 'log out' on the home screen he is logged out. 
  
  Scenario 4: The participant logs in but doesn't touch anything for two minutes
  Given the participant is logged in
  When two minutes have passed without any action
  Then the loggout out is carried out automatically