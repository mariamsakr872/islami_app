import 'package:flutter/material.dart';

typedef SettingsFunction = void Function();

class SettingWidget extends StatelessWidget {
  final String title, selectedOption;
  final SettingsFunction onClicked;

  const SettingWidget(
      {super.key,
      required this.title,
      required this.selectedOption,
      required this.onClicked});

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
            title,
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyMedium,
          ),
          GestureDetector(
            onTap: () {
              onClicked();
            },
            child: Container(
              height: 55,
              width: mediaQuery.width,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: theme.colorScheme.secondary,
                  width: 1.2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedOption,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.colorScheme.onSecondary,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
