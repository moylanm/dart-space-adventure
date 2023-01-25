import 'package:dart_space_adventure/dart_space_adventure.dart';

const systemName = 'Solar System';
const planetData = {
  'Mercury': 'A very hot planet, closest to the sun.',
  'Venus': 'It\'s very cloudy here!',
  'Earth': 'There is something very familiar about this planet.',
  'Mars': 'Known as the red planet.',
  'Jupiter': 'A gas giant, with a noticeable red spot.',
  'Saturn': 'This planet has beautiful rings around it.',
  'Uranus': 'Strangely, this planet rotates around on its side.',
  'Neptune': 'A very cold planet, furthest from the sun.',
  'Pluto': 'I don\'t care what they say - it\'s a planet.'
};

void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: systemName,
      planets: mockPlanets()
    )
  ).start();
}

List<Planet> mockPlanets() {
  return [
    Planet(
      name: 'Mercury',
      description: 'A very hot planet, closest to the sun.'
    ),
    Planet(
      name: 'Venus',
      description: 'It\'s very cloudy here!'
    ),
    Planet(
      name: 'Earth',
      description: 'There is something very familiar about this planet.'
    ),
    Planet(
      name: 'Mars',
      description: 'Known as the red planet.'
    ),
    Planet(
      name: 'Jupiter',
      description: 'A gas giant, with a noticeable red spot.'
    ),
    Planet(
      name: 'Saturn',
      description: 'This planet has beautiful rings around it.'
    ),
    Planet(
      name: 'Uranus',
      description: 'Strangely, this planet rotates around on its side.'
    ),
    Planet(
      name: 'Neptune',
      description: 'A very cold planet, furthest from the sun.'
    ),
    Planet(
      name: 'Pluto',
      description: 'I don\'t care what they say - it\'s a planet.'
    ),
  ];
}