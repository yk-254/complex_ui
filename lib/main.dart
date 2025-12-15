import 'package:flutter/material.dart';

import 'screens/animated_drawer.dart';
import 'screens/animated_switch_plane.dart';
import 'screens/moving_animation.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home:  MoveAnimationExample(),
    ),
  );
}

