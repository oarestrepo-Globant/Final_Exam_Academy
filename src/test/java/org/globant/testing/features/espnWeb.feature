Feature: Espn web navigation

  In order to verify the process of signup, logout and navigation between pages of the ESPN website
  As a verified user of the espn website
  I want to successfully log in, navigate through the different pages

  Background:
    Given Open browser and enter ESPN url

    Scenario Outline: As a logged in user, I want to navigate through ESPN Home page and Watch page
      Given I want to be new user and fill signup form with <firstname> <lastname> <email> <password>
      When I go to ESPN watch page
      Then I can see specified elements
      And I can go back to the ESPN landing page
      And I can logout from my ESPN account
      Examples:
        | firstname | lastname   | email              | password      |
        | "Oscar"   | "Restrepo" | "1@loqueseax2.com" | "password123" |
