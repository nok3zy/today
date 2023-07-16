import 'package:flutter/material.dart';
import 'package:today/Home/OkrSection/okr_item.dart';

class OkrSection extends StatelessWidget {
  final List<String> _items = [
    "This is Sample",
    "This is Sample",
    "This is Sample"
  ];

  OkrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightBlueAccent.withOpacity(0.2)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                    _items.length,
                    (index) =>
                        OkrItem(index: index + 1, title: _items[index])))),
      ),
    );
  }
}
