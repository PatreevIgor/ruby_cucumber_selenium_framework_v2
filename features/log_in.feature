Feature: Google checks

  @tag
  Scenario: Open google and check text
   When I open google page
   When I input text "Hello WebDriver!" to search form
   Then I show text "Selenium Python - Selenium Python"
   Then I check base method text
