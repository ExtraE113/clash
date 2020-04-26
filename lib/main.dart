import 'package:flutter/material.dart';
import 'package:peeve_wars/GameScreen.dart';
import 'package:peeve_wars/location_detail.dart';
import 'package:peeve_wars/location_list.dart';
import 'package:peeve_wars/mocks/mock_location.dart';
import 'package:peeve_wars/player_window.dart';


void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GameScreen()
  ));
}
