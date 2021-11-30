Feature: Homepage

  Scenario: AppName is present on HomePage
    Given the app is running
    Then I see {'staples'} text

  @testMethodName: testGoldens
  Scenario: Primary swatch color is brown
    Given the app is rendered
    Then {'homepage'} screenshot verified
