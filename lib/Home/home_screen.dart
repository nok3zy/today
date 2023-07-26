import 'package:flutter/material.dart';
import 'package:today/Home/Widgets/widget_colorBox.dart';
import 'package:today/Home/Widgets/widget_spinSquare.dart';

import 'Widgets/widget_button.dart';
import 'Widgets/widget_spinCircle.dart';

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
          WidgetButton(
            title: "Spinned Circle",
            widget: SpinCircle(),
          ),
          WidgetButton(
            title: "Spinned Square",
            widget: SpinSquare(),
          ),
        ]),
      ),
    );
  }
}
