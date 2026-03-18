import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('항해 기록')),
      body: Center(
        child: Text('Log Page'),
      ),
    );
  }
}