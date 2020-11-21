Feature: Show info about current melotropy-cli version
  As a restless melotropian
  I want to know the melotropy-cli version installed
  So i can know how defunct is it

  Scenario: I ask current cli version
		When I run `melotropy-cli version`
		Then the output should show installed version
