import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sliderpage extends StatefulWidget {
  const sliderpage({super.key});

  @override
  State<sliderpage> createState() => _sliderState();
}

class _sliderState extends State<sliderpage> {
  double value = .2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Transform.rotate(
              //transform.(rotate=>angle/scale=>scale/transelete=>offset)
              angle: value,
              child: Container(
                width: value,
                color: Colors.black,
                height: value,
              ),
            ),
          ),
          Text("${value.round()}"),
          Slider(
            label: '$value',
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            divisions: 500,
            value: value,
            onChanged: (double val) => setState(() {
              value = val;
            }),
            max: 500,
            min: 0,
          ),
        ],
      ),
    );
  }
}
