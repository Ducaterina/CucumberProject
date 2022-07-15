@F_Login
Feature: This feature would be used to design the login page of the application

  Background: Open the application
    Given I have opened the application in browser

  #swap to @Ignore or @WIP to skip this one
  @Sanity
  Scenario: Validate the successful login
    #Given I have opened the application in browser
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the Login Button
    Then I should be landed on the home page

  @Regression
  Scenario: Validate the successful login using test data
    When I click on the Login link
    And I enter username "abc@xyz.xom"
    And I enter password "Pqr@1234"
    And I click on the Login Button
    Then I should be landed on the home page

  @Regression @Rapid
  Scenario Outline: Validate the successful login using multiple test data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the Login Button
    Then I should be landed on the home page

    Examples: 
      | UserName            | Password |
      | abc@xyz.xom         | Pqr@1234 |
      | Kate@abc.com        | Pqr@1234 |
      | corps2006@yandex.ru | Treize13 |

 
  Scenario: Validate the negative login using test data
    When I click on the Login link
    And I enter username "corps2006@yandex.ru"
    And I enter password "Pqr@1234"
    And I click on the Login Button
    Then I should get the error message as "The email or password you have entered is invalid."
