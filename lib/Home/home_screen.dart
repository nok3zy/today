import 'package:flutter/material.dart';
import 'package:today/Home/OkrSection/okr_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [OkrSection()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
