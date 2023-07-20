import 'package:flutter/material.dart';

class OkrItem extends StatelessWidget {
  final int index;
  final String title;

  const OkrItem({super.key, required this.index, required this.title});

  String generateOkrTitle() {
    return 'KR$index. $title';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          generateOkrTitle(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
