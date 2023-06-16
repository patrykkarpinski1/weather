import 'package:flutter/material.dart';

class SpinnignSunWidget extends StatefulWidget {
  const SpinnignSunWidget({Key? key}) : super(key: key);

  @override
  State<SpinnignSunWidget> createState() => _SpinnignSunWidgetState();
}

class _SpinnignSunWidgetState extends State<SpinnignSunWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        height: 275,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sunhome.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 6.28,
          child: child,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
