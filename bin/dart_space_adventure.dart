import 'dart:convert';
import 'dart:io';

import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) async {

  if (!arguments[0].endsWith('.json')) {
    print('\nERROR: First argument must be a .json file.');
    return;
  }

  if (!await File(arguments[0]).exists()) {
    print('\nERROR: File "${arguments[0]}" does not exist.');
    return;
  }

  final decoded = jsonDecode(File(arguments[0]).readAsStringSync());

  SpaceAdventure(
    planetarySystem: PlanetarySystem.fromJson(decoded)
  ).start();
}