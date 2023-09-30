import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String optionTitle;

  const SettingWidget({super.key, required this.optionTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            optionTitle,
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyMedium,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 55,
              width: mediaQuery.width,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: theme.primaryColor,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
