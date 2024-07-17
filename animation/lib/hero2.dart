import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: const Center(
        child: Hero(
          tag: 'myTag', // Same tag as in the source screen
          child: Icon(Icons.star, size: 200),
        ),
      ),
    );
  }
}
