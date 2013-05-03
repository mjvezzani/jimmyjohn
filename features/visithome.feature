Feature: Visit QOTD as a non-user
  
  Scenario: A visitor visits the home page of QOTD
    Given a visitor visits the home page
    Then they should see the QOTD
    And they should see an option to sign up for QOTD
    And they should see an about link
    And they should see a contact link
    And they should see an option to sign in for QOTD
    
  Scenario: A visitor wants to sign up for the QOTD services
    Given a visitor visits the home page
    And clicks on the sign up link
    Then they should be routed to the sign up page
    And see the sign up form