Feature: Products

  Scenario: User adds a product
    Given the app is running
    When I enter {'EAN-13'} text into {0} text field
    And I tap {Icons.add} icon
    Then I see {'EAN-13'} text

    Examples:
      |        EAN-13 |
      | 1234567890123 |
      | 1111111111111 |
      | 2222222222222 |


  # @testMethodName: testGoldens
  # Scenario: A added product is displayed on screen
  #   Given the app is rendered
  #   Then {'product'} screenshot verified
