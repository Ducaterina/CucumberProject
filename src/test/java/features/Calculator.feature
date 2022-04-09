Feature: This feature would be creating a calculator for Add and Substract

  Scenario: Addition operation
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: Substraction operation
    Given I have a calculator
    When I sub 6 and 3
    Then I should get the result as 3

  Scenario Outline: to add two numbers using Scenario Outline
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    3 |      7 |
      |    3 |    5 |      8 |

  Scenario Outline: to sub two numbers using Scenario Outline
    Given I have a calculator
    When I sub <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    3 |      1 |
      |   12 |    5 |      7 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers using list
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: to calculate the total bill of the order
    Given I have a calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get the result as 100

  Scenario: to calculate the total bill of the order using quantity
    Given I have a calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
