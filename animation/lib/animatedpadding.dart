import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class animatedpositined extends StatefulWidget {
  const animatedpositined({super.key});

  @override
  State<animatedpositined> createState() => _animatedpositinedState();
}

class _animatedpositinedState extends State<animatedpositined> {
  double _width = 200;
  String buttonText = 'Zoom In';
  bool visible = true;
  double padding = 5;
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
              AnimatedPadding(
                duration: const Duration(milliseconds: 200),
                curve: _curve,
                child: Container(
                  width: _width,
                  height: 100,
                  color: Colors.red,
                ),
                padding: EdgeInsets.all(padding),
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
                    padding = padding == 5 ? 150 : 5;
                    //  _width = visible ? 50 : 500;
                    //   buttonText = visible ? 'Zoom Out' : 'Zoom In';
                    //   _curve = visible ? Curves.easeInExpo : Curves.easeInExpo;
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
