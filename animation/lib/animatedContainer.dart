import 'package:flutter/material.dart';

class animatedContainer extends StatefulWidget {
  const animatedContainer({super.key});

  @override
  State<animatedContainer> createState() => _CustomAnimatedContainerState();
}

const defaultWidth = 200.0;

class _CustomAnimatedContainerState extends State<animatedContainer> {
  double _width = defaultWidth;
  String buttonText = 'Zoom In';
  bool isZoomed = false;
  var _curve = Curves.bounceIn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 370),
          curve: _curve,
          width: _width,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 80,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                isZoomed = !isZoomed;
                _width = isZoomed ? 50 : 500;
                buttonText = isZoomed ? 'Zoom Out' : 'Zoom In';
                _curve = isZoomed ? Curves.easeInExpo : Curves.easeInExpo;
              });
            },
            child: Text(buttonText),
          ),
        ),
      ],
    );
  }
}
