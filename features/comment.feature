Feature: Comments

	Scenario: Viewing the comments on the Post page
		Given there is a post called 'Hello, World!' and a comment
		When I am on the post page
		Then I should see the 'Hello, World!' post on the page
		And I should see the comment
		
	Scenario: Viewing the number of comments on the homepage
		Given there is a post called 'Hello, World!' and a comment
		When I am on the homepage
		Then I should see the 'Hello, World!' post on the page
		And I should see that there is 1 comment on the first post
		And I should see that there is 0 comments on the second post