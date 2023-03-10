import 'dart:math';

import 'planet.dart';

class PlanetarySystem {

  final Random _random = Random();
  final String name;
  final List<Planet> planets;

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const[]});

  PlanetarySystem.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      planets = json['planets'].map<Planet>(
        (e) => Planet(name: e['name'], description: e['description'])
      ).toList();

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;
  
  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }

  Planet planetWithName(String name) {
    return planets.firstWhere(
      (planet) => planet.name == name,
      orElse: () => Planet.nullPlanet()
    );
  }

  bool hasPlanet(String planetname) {
    try {
      planets.firstWhere((planet) => planet.name == planetname);
    } on StateError {
      return false;
    }
    return true;
  }
}