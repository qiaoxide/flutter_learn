import 'package:flutter/material.dart';

/// Widget 的淡入淡出效果 AnimatedOpacity Widget
/// https://docs.flutter.cn/cookbook/animation/opacity-animation
///

class AnimationWidgetFade extends StatefulWidget {
  final String title;
  const AnimationWidgetFade({super.key, required this.title});

  @override
  State<AnimationWidgetFade> createState() => _AnimationWidgetFadeState();
}

class _AnimationWidgetFadeState extends State<AnimationWidgetFade> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _visible = !_visible;
              });
            },
            tooltip: 'Toggle Opacity',
            child: const Icon(Icons.flip),
          ),
        ],
      ),
    );
  }
}
