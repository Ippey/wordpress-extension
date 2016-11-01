Feature: I login as the specfic role

  @javascript
  Scenario: Login as the "administrator" role

    Given the screen size is 1440x900
    Given I login as the "administrator" role

    When I am on "/wp-admin/plugins.php"
    Then I should see "Howdy, admin"
    Then I should see "Plugins"

    When I logout
    Then I should see "You are now logged out."

  Scenario: Login as the "editor" role

    Given the screen size is 1440x900
    Given I login as the "editor" role

    When I am on "/wp-admin/plugins.php"
    Then I should see "Sorry, you are not allowed to access this page."
