Feature: HelloWorld Main
  As automation tester
  I want to poc integration of cucumber with appium and saucelabs

Scenario: Click button on HelloWorld App's Main Activity

  Given I have App running with appium
  When text view is initialized with "Hello world!"
    And click "New Button" button
  Then I should see "yyyyy" text in textview at main page

  Given I'm at Login view
  When I fill in "name" with "maor"
    And I fill in "phone" with "0546310475"
    And click "Register" button
  Then Alert is opened
