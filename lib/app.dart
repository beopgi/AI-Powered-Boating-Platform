import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/main_shell/main_shell.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Powered Boating Platform',
      theme: AppTheme.lightTheme,
      home: const MainShell(),
    );
  }
}