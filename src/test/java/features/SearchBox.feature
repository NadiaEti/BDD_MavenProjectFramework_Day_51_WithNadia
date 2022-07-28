Feature: SearchBox Functionality
#  SearchBox should Typeable where customer can enter valid product and select product to purchase
#  Target search box functionality should have a menu


#  Test Scenario/Scenario:
#  Test Case Design/ Scenario design: Step by step

  Background:
    Given user is landed on amazon homepage



  Scenario:SearchBox functionality should work with a valid product name
    And user enter valid product name
    When user click on search button
    Then user should see the valid product appears


  Scenario: SearchBox functionality should not work with a Invalid product name
    And user enter Invalid product name
    When user click on search button
    Then user should see the partial matched product appears
    But user should not see the Invalid product appears






#  Scenario: Searching a valid product should show us available products qty

