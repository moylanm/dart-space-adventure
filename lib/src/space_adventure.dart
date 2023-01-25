import 'dart:io';
import 'dart:math';
import 'planet.dart';
import 'planetary_system.dart';

class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({required this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt("What is your name?"));
    print('Let\'s go on an adventure!');
    if (planetarySystem.hasPlanets) {
      travel(
        promptForRandomOrSpecificDestination(
          'Shall I randomly choose a planet for you to visit? (Y or N)'
        )
      );
    } else {
      print('Aw, there are no planets to explore.');
    }
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync() ?? '';
  }

  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}!');
    print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
    print('Nice to meet you, $name. My name is Eliza, I\'m an old friend of Siri.');
  }

  bool promptForRandomOrSpecificDestination(String prompt) {
    String? answer;
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t get that.');
      }
    }
    return false;
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToPlanet(planetarySystem.randomPlanet());
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit.'));
    }
  }

  void travelToPlanet(Planet planet) {
    print('Traveling to ${planet.name}');
    print('Arrived at ${planet.name}, ${planet.description}');
  }

  void travelTo(String destination) {
    print('Traveling to $destination...');
    planetarySystem.planets.forEach((planet) {
      if (planet.name == destination) {
        print('Arrived at ${planet.name}, ${planet.description}');
      }
    });
  }
}