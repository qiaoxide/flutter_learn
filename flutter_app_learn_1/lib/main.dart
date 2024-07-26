import 'package:flutter/material.dart';
import 'animation_widget_fade.dart';

// import 'animation_page.dart';
// import 'animation_container.dart';
//import 'animation_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: AnimationWidgetFade(title: 'title'),
      ),
    );
  }
}
