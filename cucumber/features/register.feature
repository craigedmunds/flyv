Feature: FlyVictor Register
  In order to Purchase seats from FlyVictor
  As a customer
  I want to Register through their website

  Scenario: Join or Register to FlyVictor (Declarative)
    Given I navigate to http://v2-staging.flyvictor.com/
    And I click join
    And Input some personal details
    And I accept the Terms and Conditions
    When I click create account
    Then I will have registered to FlyVictor

  Scenario: Join or Register to FlyVictor (Narrative)
    Given I open FlyVictor
    When I signup
    Then I will have registered to FlyVictor