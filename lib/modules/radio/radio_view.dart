import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(height: 120),
        Image.asset("assets/images/radio_header.png"),
        const Text("إذاعه القران الكريم"),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.forwardStep,
              size: 30,
              color: theme.colorScheme.onSecondary,
            ),
            Icon(
              FontAwesomeIcons.play,
              size: 30,
              color: theme.colorScheme.onSecondary,
            ),
            Icon(
              FontAwesomeIcons.backwardStep,
              size: 30,
              color: theme.colorScheme.onSecondary,
            ),
          ],
        )
      ],
    );
  }
}
