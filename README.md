Fifa
====

![Picture](./assets/tardelli1.png)

A fun project, it has improved my knowledge of Test Driven Development (TDD), Object-Oriented Programming (OOP) and Object-Oriented Design (OOD).

The aim was to create a system to organize a weekly kickabout I have with mates. The Mananger(class) has a team(class). This team lists their players and their respective attributes, which are updated weekly. The app can send out a message to all the players with match details. The players are initialized with contact_numbers. The manager can put the team into matches(class) and try to predict who will win based on various metrics such as average player rating and whether the fixture is home or away. 

##Technologies

- Ruby 2.0.0
- RSpec 3.0
- Preek
- CodeClimate 

##How to test it

- git clone https://github.com/tbeeley/Fifa.git
- cd Fifa
- bundle
- rspec

##How to run

- git clone https://github.com/tbeeley/Fifa.git
- cd Fifa
- YourName = Manager.new("Yourname")
- Yourname.run_program

to add more players:
- Yourname.add_team_player


