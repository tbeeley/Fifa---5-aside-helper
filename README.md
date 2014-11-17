Fifa---5-aside-helper
====

[![Code Climate](https://codeclimate.com/github/tbeeley/Fifa/badges/gpa.svg)](https://codeclimate.com/github/tbeeley/Fifa)

![Picture](./assets/tardelli1.png)

I've really enjoyed this project, and it has improved my knowledge of TDD (especially doubles!), OOP and clean code. 

The aim was to create a system to organize a weekly kickabout I have with mates. The Manager (class) has teams (class). This Team has a squad and first_team made up of players (class), as well as a name, stadium and game_capacity. The manager gives each player a performance score which affects their rating. The players themselves have names and phone_numbers. The manager can put the team into matches (class) against other teams and try to predict who will win based on various metrics such as average player rating and whether the fixture is home or away. 

In this project I have prioritised clarity above conciseness. At times the code may seem long, but it is hopefully easy for anyone to read.  


##Technologies

- Ruby 2.0.0
- RSpec 3.0

##How to test it

- git clone https://github.com/tbeeley/Fifa.git
- cd Fifa
- bundle
- rspec

##How to run

- git clone https://github.com/tbeeley/Fifa.git
- cd Fifa
- irb
- require './files.rb'

##Next Steps

- Add a game engine
- Make a simple web-interface
- Add texting functionality with Twilio
