import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'page/main_page/main_page.dart';
import 'value/color/color_schemes.g.dart';
import 'value/color/custom_color.g.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        extensions: [lightCustomColors],
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        extensions: [darkCustomColors],
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const MainPage(),
    );
  }
}
