import 'package:flutter/material.dart';

import 'screens/animated_drawer.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const AnimatedDrawer(),
    ),
  );
}

