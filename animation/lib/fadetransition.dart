import 'package:flutter/material.dart';

class fade extends StatefulWidget {
  const fade({Key? key}) : super(key: key);

  @override
  State<fade> createState() => _HomePageState();
}

class _HomePageState extends State<fade> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
