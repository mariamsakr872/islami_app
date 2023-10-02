import 'package:flutter/material.dart';

class UnselectedOption extends StatelessWidget {
  final String title;

  const UnselectedOption({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          textAlign: TextAlign.start,
        ));
  }
}
