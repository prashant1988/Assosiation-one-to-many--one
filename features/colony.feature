Feature: Manage colony
  In order to  make linking in society
  As an author
  I wants to create and manage association.


  Scenario:  Colony_List
    Given I have colony names MG, Neta je
    When I go to Colony_Listing
    Then  I should see "MG "
    And   I should see "Neta je"

  Scenario: Create a valid colony
    Given I have no colony
    And  I am on  Colony_Listing
    When I follow "new entry"
    And I fill in "colony_name" with "Azad nagar"
    And I fill in "colony_city" with "Mumbai"
    And I press "save"
    Then I should see "New Colony created"
    And I should see "Azad nagar"
    And I should see "Mumbai"
    And I should have 1 colony