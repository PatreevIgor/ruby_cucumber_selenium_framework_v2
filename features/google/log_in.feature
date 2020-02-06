Feature: Google checks

  @tag
  Scenario: Open google page and input text to form
    When I open google page
    When I input text "Hello WebDriver!" to search form
    When I click "Пошук Google" button
