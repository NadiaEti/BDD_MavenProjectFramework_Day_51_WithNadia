Feature: Categories Functionality

#  Categories should clickable where customer can click and select product to purchase
#  Target search box functionality should have a menu


#  Test Scenario/Scenario:
#  Test Case Design/ Scenario design: Step by step

  Background:
    Given user is landed on target homepage

  Scenario: Categories functionality should work When customer click
    And user click on dropdown menu of “Categories“ function
    When user  click on “grocery“ under the Categories function
    Then the user verify “ grocery” functionality is displayed