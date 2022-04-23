import 'package:flutter/material.dart';
import 'package:tile_game/resultwon.dart';
import 'package:tile_game/tileGame.dart';
import 'package:tile_game/result.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tileGame(),
    theme: ThemeData(fontFamily: 'Ubuntu'),
    routes: {
      '/gameOver': (context) => popup(),
      '/won': (context) => popupWon(),
    },
  ));
}