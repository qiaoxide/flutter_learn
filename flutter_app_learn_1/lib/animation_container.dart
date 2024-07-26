import 'dart:math';
import 'package:flutter/material.dart';

/// Container 动画渐变
/// https://docs.flutter.cn/cookbook/animation/animated-container
class AnimationContainerApp extends StatefulWidget {
  const AnimationContainerApp({super.key});

  @override
  State<AnimationContainerApp> createState() => _AnimationContainerAppState();
}

class _AnimationContainerAppState extends State<AnimationContainerApp> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 300,
          maxHeight: 300,
        ),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          curve: Curves.fastOutSlowIn,
          child: UnconstrainedBox(
            child: Container(
              width: 90,
              height: 50,
              color: const Color.fromARGB(0, 140, 140, 140),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    final random = Random();
                    _width = random.nextInt(300).toDouble();
                    _height = random.nextInt(300).toDouble();
                    _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
                    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
                  });
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
