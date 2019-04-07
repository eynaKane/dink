Feature: Dink Site Health Checker
  As a site administrator
  I should be able to check
  The health of the website

  Scenario: Website health check
    Given I am on the health page
    Then I should see "DINK is up! :)"
