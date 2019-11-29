# Testing 101
---

 # Unit Testing Bootcamp

Testing individual components or functionality in a piece of software to ensure that it works the way it should.

## Test Driven Development (TDD)

Write test simulating how code should work

Test should fail initially

Write code to make test pass

Refactor so code/test are clean and functional

## Why Unit Testing is important?

Prevents careless mistakes

Minimize unnecessary or bad code

Makes collaboration easier


## 10 more  Reasons to Write Unit Tests

Tests Reduce Bugs in New Features.

Tests Reduce Bugs in Existing Features.

Tests Are Good Documentation. A concise code example is better than many paragraphs of documentation.

Tests Reduce the Cost of Change.

Tests Improve Design.

Tests Allow Refactoring.

Tests Constrain Features.

Tests Defend Against Other Programmers.

Testing Forces You to Slow Down and Think.

Tests Reduce Fear One of the biggest fears that programmers encounter is making a change to a piece of code and not knowing what is going to break.

## Why Unit Testing is important?

• Do write tests for code that can’t be caught in an automated fashion otherwise. This includes code in your classes’ methods, custom getters and setters and most anything else you write yourself.

• Don’t write tests for generated code. For example, it’s not worthwhile to write tests for generated getters and setters. Swift does this very well, and you can trust it works.

• Don’t write tests for issues that can be caught by the compiler. If the tested issue would generate an error or warning, Xcode will catch it for you.

• Don’t write tests for dependency code, such as first- or third-party frameworks your app uses. The framework authors are responsible for writing those tests. For example, you shouldn’t write tests for UIKit classes because UIKit developers are responsible for writing these. However, you should write tests for your custom subclasses thereof: This is your custom code, so you’re responsible for writing the tests.



## What makes a good Unit Test?


A - Automatic

T - Thorough

R - Repeatable

I - Independent

P - Professional


# UI Testing Bootcamp


UI Test is sometimes called UI Automation Testing

Other tools used: Fastlane, Bitrise?



## Testing Best Practices


Do not rely ONLY in UI Testing

NEVER pause threads or use timers unless specifically told.

Name your tests wisely

Make tests simpler, don't add comments.

All Tests Pass Policy

Every test should be independent.

Setup reporting for a failure info.
