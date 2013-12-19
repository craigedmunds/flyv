Feature: Requesting a Quote
  In order to get a Quote on a Flight
  As a customer
  I want FlyVictor to provide me a Quote on my requested journey

  Scenario: Customer requests Quote on Flights
    Given I'm a Registered User, Logged-in
    And I search for future Flights between Biggin Hill and Nice
    When I request the first offer quoted
    Then I will receive confirmation of my request
    And I will receive a Quote on my requested journey


