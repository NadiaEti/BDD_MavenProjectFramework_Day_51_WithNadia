Feature: SearchBox Functionality

#  SearchBox should Typeable where customer can enter valid product and select product to purchase
#  Amazon search box functionality should have a menu


#  Test Scenario/Scenario:
#  Test Case Design/ Scenario design: Step by step

  Background:
    Given user is landed on target homepage

  @RegressionTest @SmokeTest @Pending
  Scenario: SearchBox functionality should work with a valid product name
    And user enter valid product name
    When user click on search button
    Then user should see the valid product appears

#  @RegressionTest
#  Scenario: SearchBox functionality should not work with a Invalid product name
#    And user enter Invalid product name
#    When user click on search button
#    Then user should see the partial matched product appears
#    But user should not see the Invalid product appears

  @RegressionTest @pending
  Scenario: SearchBox functionality should work with valid product name
    And user enter "Soda" valid product name
    When user click on search button
    Then user should see "Soda" the valid product appears


#    Scenario Outline: To pass multiple set of data in one test case
  @RegressionTest @pending
  Scenario Outline:SearchBox functionality should work with a valid product name using scenario outline
    And user enter valid "<productName>" products name
    When user click on search button
    Then user should see the valid "<expectedProduct>" products appears

    Examples:
      | productName | expectedProduct |
      | Soda        | Popular Filters |
      | Baby Lotion | Popular Filters |


#  @RegressionTest @pending
#  Scenario Outline: SearchBox functionality should work with a valid product name using Scenario outline
#    And user enter valid "<product Name>" products name
#    When user click on search button
#    Then user should see the valid "<expected Product>" products appears "<age>"
#
#    Examples:
#      | product Name   | expected Product | age |
#      | Soda           | Popular Filters  | 23  |
#      | Baby Lotion    | Popular Filters  | 45  |
#


#  Data Table Approach:
  @RegressionTest
  Scenario: SearchBox functionality should work with any valid product name
    And user enter valid product name for search
      | product Name  |
      | fruits snacks |
    When user click on search button
    Then user should see the valid product appears after search
      | Expected product Name |
      | Popular Filters       |


  @RegressionTest @pending
  Scenario: Target user should login with valid credential
    And user enter valid user name & password
      | user name | password |
      | Nadia     | Test123  |
    When user click on signIn button
    Then user should see profile name




