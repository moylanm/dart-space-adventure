// import 'package:dart_space_adventure/dart_space_adventure.dart' as dart_space_adventure;
import 'dart:io';

void main(List<String> arguments) {
  printGreeting();
  printIntroduction(responseToPrompt("What is your name?"));
  print('Let\'s go on an adventure!');
  travel(promptForRandomOrSpecificDestination(
    'Shall I randomly choose a planet for you to visit? (Y or N)'
  ));
}

String responseToPrompt(String prompt) {
  print(prompt);
  return stdin.readLineSync() ?? '';
}

void printGreeting() {
  print('Welcome to the Solar System!');
  print('There are 8 planets to explore.');
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
    travelToRandomPlanet();
  } else {
    travelTo(responseToPrompt('Name the planet you would like to visit.'));
  }
}

void travelToRandomPlanet() {
  print(
    'Traveling to Mercury...\n'
    'Arrived at Mercury. A very cold planet, furthest from the sun.'
  );
}

void travelTo(String planetName) {
  print(
    'Traveling to $planetName...\n'
    'Arrived at $planetName. A very cold planet, furthest from the sun.'
  );
}