import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: 'Solar System',
      planets: [
        Planet(
          name: 'Mercury',
          description: 'A very hot planet, closest to the sun.'
        )
      ]
    )
  ).start();
}
