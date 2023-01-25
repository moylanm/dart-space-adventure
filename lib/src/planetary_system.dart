import 'planet.dart';

class PlanetarySystem {
  String name;
  List<Planet> planets;

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const[]});

  int get numberOfPlanets => planets.length;
}