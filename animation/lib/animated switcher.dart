import 'package:flutter/material.dart';

class switched extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<switched> {
  bool showFirstContainer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Switch Example')),
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: showFirstContainer
              ? Container(
                  key: ValueKey('first'),
                  color: Color.fromARGB(255, 40, 37, 37))
              : Container(
                  key: ValueKey('second'),
                  color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showFirstContainer = !showFirstContainer;
          });
        },
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
