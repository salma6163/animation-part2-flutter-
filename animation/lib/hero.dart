import 'package:animation/hero2.dart';
import 'package:flutter/material.dart';

class hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
          },
          child: Hero(
            tag: 'myTag', // Unique tag for the animation
            child: Icon(Icons.star, size: 100),
          ),
        ),
      ),
    );
  }
}
