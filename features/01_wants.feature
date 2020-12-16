Feature: Manage melotropian "wants" at different platforms
  As a knowledgeable melotropian
  I want to know when "my wants" are available
  So i have a chance to buy it

  Background:
    Given I am a melotropian

  Scenario: I list my Watch List at ebay
    Given I have a user at eBay
      And I have items in my Watch List
      And my eBay token in the .ebay_token file
     When I run `melotropy-cli wants --list`
     Then the output should show all items in that list
