Feature: Homepage

	Scenario: Viewing the homepage
		Given there is a post called 'Hello, World!' with the contents 'Hello, world...'
		When I am on the homepage
		Then I should see the 'Hello, World!' post