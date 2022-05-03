OVERVIEW - iOS App Development: Test-Driven Development (SESSION 003) by Harrison Ferrone, Linkedin Learning
------------------------------------------------------------------------------------------------------
Test-driven development (TDD) makes us more pragmatic, efficient, and creative software developers. TDD is especially critical in the mobile world, where a quality codebase isn’t an option; it’s a requirement to launch. This course aims to better equip iOS developers with a model for developing strong, scalable, and tested code from the very first line. Start with some test-driven theory, progress to the fundamentals, and then build a small application that will put everything you learned to good use. Along the way, find out how to write your first unit test using Xcode and Swift, and conduct interface testing specifically for table views. Instructor Harrison Ferrone helps you understand TDD theory and practice, enabling you to write coherent tests that reveal the true weaknesses in your code long before it ever goes to production.

Topics include:
- What is test-driven development?
- Creating and expanding a data model
- Creating a manager class
- Testing class methods
- Checking for duplicates
- Testing table views
- Mocking cells
- Testing cell selection
- Assembling the app


------------------------------------------------------------------------------------------------------
📋  Unit Testing Training - CONTENTS
------------------------------------------------------------------------------------------------------

Foundation and Training
Foundation and Training
1. What us test-driven development?
	- Fundamental Methods
		- The specific rule is that programmers need to write tests
		- All features need to be covered by these test
		- A product can't be shipped if the test suite is not satisfied 
	- The Three Laws of Uncle Bob
		- Rule 1: You are not allowed to write any production code unless it is to make a failing unit test pass
		- Rule 2: You are not allowed to write any more of a unit test than is sufficient to fail; and compilation failures are failures.
		- Rule 3: You are not allowed to write any more production code than is sufficient to pass the one failing unit test
	- Summary
		- Start with a failing test
		- Writing code to make the test pass
		- Making sure that only write code that is absolutely necessary
2. Why test-driven development?
		-  Efficiency - the larger the code base, the better reason to write and have unit test
		- Automation - could lessen human errors, etc
	- PROS
		- Get to know our feature set initimately
		- East to maintain and refactor
		- Fewer bugs
	- CONS
		- It features changes -> Unit Test needs also to change
		- Time Consuming
3. Unit tests explained 
	- Unit test are concerned with one function and one function only
4. Development techniques
	- RED
		- We only write the minimum code necessary to have a failing test
		- From there, we can write the code to pass the test
	- GREEN
		- Now we focus on writing the functional code
		- When we have a passing test, we are done
	- REFACTOR
		- The crucial step - we look for repeated or extraneous code
		- We should not skip this
5. Planning and design

Getting Started
1. Demo: What we’re building
	- Test Project: FilmFest
		- View Controller
		- Title
		- Table view
2. Project setup
3. Test case breakdown
4. Create a data model
5. Expand the data model

The Manager Class
1. Create the movie manager
2. Add manager functionality
3. Check off movies
4. Compare movies
5. Wrap up the movie manager

Tableview Testing
1. Interface testing setup
2. Data source and delegate setup
3. Tableview section one tests
4. Tableview section two tests
5. Mocking the Tableview cell
6. Configure the Tableview cell
7. Test cell selection

Finishing touches
1. Assemble the app
2. Code coverage

What's NEXT
