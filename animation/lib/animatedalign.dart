import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class animatedalign extends StatefulWidget {
  const animatedalign({super.key});

  @override
  State<animatedalign> createState() => _animatedalignState();
}

class _animatedalignState extends State<animatedalign> {
  double _width = 200;
  String buttonText = 'Zoom In';
  bool visible = true;
  double x = 0, y = 0;
  Color color = Colors.black;

  var _curve = Curves.bounceIn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Text("data"),
              ),
              Align(
                alignment: FractionalOffset(x, y),
                child: Container(
                  width: _width,
                  height: 100,
                  color: color,
                ),
              ),
            ],
          ),
          Container(
            width: 80,
            child: FloatingActionButton(
              onPressed: () {
                setState(
                  () {
                    visible = !visible;
                    x = x == 0 ? 1 : 0;
                    y = y == 0 ? 1 : 0;
                    color = color == Colors.black ? Colors.red : Colors.black;
                  },
                );
              },
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
