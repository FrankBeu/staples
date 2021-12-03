Feature: Products

  Scenario: User adds a product
    Given the app is running
    # When I enter <EAN> into <field> input field
    When I enter {'1234567890123'} into {'gtinInput'} input-withKey field
    And I tap {Icons.add} icon
    Then I see {'1234567890123'} text

    ### TODO tables not working
    Examples:
      |           EAN | field |
      | 1234567890123 |     0 |
      # | 1111111111111 |
      # | 2222222222222 |


  # @testMethodName: testGoldens
  # Scenario: A added product is displayed on screen
  #   Given the app is rendered
  #   Then {'product'} screenshot verified
