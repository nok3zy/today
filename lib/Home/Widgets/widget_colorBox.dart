import 'package:flutter/material.dart';

class ColorToggleBox extends StatefulWidget {
  const ColorToggleBox({super.key});

  @override
  State<ColorToggleBox> createState() => _ColorToggleBoxState();
}

class _ColorToggleBoxState extends State<ColorToggleBox> {
  bool _isSelected = false;

  void onToggle() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 200,
        height: 200,
        curve: Curves.fastLinearToSlowEaseIn,
        color: _isSelected ? Colors.red : Colors.blue,
      ),
    );
  }
}
