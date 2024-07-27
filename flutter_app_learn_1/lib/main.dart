import 'package:flutter/material.dart';
//import 'animation_widget_fade.dart';

// import 'animation_page.dart';
// import 'animation_container.dart';
//import 'animation_widget.dart';

void main() {
  runApp(const ThemeMainApp());
}

/// 文字使用演示
///
///
class FontMainApp extends StatelessWidget {
  const FontMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Package fonts')),
        body: const Center(
          child: Text(
            '中文字体演示',
            style: TextStyle(fontFamily: 'NotoSansSC'),
          ),
        ),
      ),
    );
  }
}

/// Theme使用演示
///
///
class ThemeMainApp extends StatelessWidget {
  const ThemeMainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 255),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(fontFamily: 'NotoSansSC', fontSize: 32),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

/// Theme使用演示，需要子组件才会生效
///
///
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 32,
        ),
        color: Theme.of(context).colorScheme.primary,
        child: Text(
          'Text with a background 中文',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
    );
  }
}
