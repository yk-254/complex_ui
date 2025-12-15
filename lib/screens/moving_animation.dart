import 'package:flutter/material.dart';

class MoveAnimationExample extends StatefulWidget {
  @override
  _MoveAnimationExampleState createState() => _MoveAnimationExampleState();
}

class _MoveAnimationExampleState extends State<MoveAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(-2.0, 1.0),
      end: Offset(1.0, -2.0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true); 
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Move Animation Example')),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}