import 'package:flutter/material.dart';
import 'package:today/Home/Widgets/ColoredBox/colored_box.dart';
import 'package:today/Home/Widgets/RotatedBox/rotated_box.dart';
import 'package:today/Home/widget_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(children: const [
          WidgetButton(
            title: "Color Toggle Box",
            widget: ColorToggleBox(),
          ),
        ]),
      ),
    );
  }
}
