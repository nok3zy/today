import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final Widget widget;
  final String title;

  const WidgetButton({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WidgetPage(title: title, widget: widget)));
        },
        child: Text(title),
      ),
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
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: widget),
    );
  }
}
