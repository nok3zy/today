import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final Widget widget;
  final String title;

  const WidgetButton({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    WidgetPage(title: title, widget: widget)));
      },
      child: Text(title),
    );
  }
}

class WidgetPage extends StatelessWidget {
  final String title;
  final Widget widget;

  const WidgetPage({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: widget),
    );
  }
}
