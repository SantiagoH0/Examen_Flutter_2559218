import 'package:examen/screen_views/list_menu.dart';
import 'package:examen/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Listas(),
      theme: AppTheme.lightTheme,
    );
  }
}
