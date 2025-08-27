import 'package:flutter/material.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(textAlign: TextAlign.center, 'Read Free Books'),
        );
      },
    );
  }
}
