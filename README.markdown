This assignment was completed with the help of Katie Soto

Heroku Link: <a href="togashirps.heroku.com">CLICK</a>

Homework 6 Requirements

<b>Question 1) Create a Rails app (e.g., rails new roshambo) and implement a version of Rock, Paper, Scissors from Assignment 2.</b><br>
  Click <a href="https://togashirps.heroku.com">HERE</a> to play

<b>Question 2) Write RSpec tests to verify the correct behavior of your application.</b><br> 
  Click <a href="https://github.com/Hagaren64/rockpaperscissors/tree/master/spec/controllers">HERE</a> to view controller specs
  To run tests, type: <i><u>bundle exec rspec spec/</u></i> from the root directory of the rails project

<b>Question 3) Demonstrate all tests passing, then break your code and demonstrate that a test catches the problem.</b><br>
  By altering line 3 in <a href="https://github.com/Hagaren64/rockpaperscissors/blob/master/app/controllers/throw_controller.rb">throw_controller.rb</a> to the following will break the code and cause rspec to catch the problem:

  @defeat = {roc: :scissors, pape: :rock, scissor: :paper}

  Notice that I deleted the <b>last letter</b> in each of the keys.  Since <a href="https://github.com/Hagaren64/rockpaperscissors/blob/master/spec/controllers/throw_controller_spec.rb">throw_controller_spec.rb</a> is expecting either a "rock", "paper", or "scissors" as a valid move, it will fail due to incorrect behavior.
