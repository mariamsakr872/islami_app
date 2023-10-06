import 'package:flutter/material.dart';
import 'package:islami_v2_app/modules/settings/widget/selected_option.dart';
import 'package:islami_v2_app/modules/settings/widget/unselected_option.dart';
import 'package:provider/provider.dart';

import '../../../app_provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.changeLanguage("en");
                Navigator.of(context).pop();
              },
              child: appProvider.currentLocale == "en"
                  ? const SelectedOption(title: "English")
                  : const UnselectedOption(title: "English")),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeLanguage("ar");
                Navigator.of(context).pop();
              },
              child: appProvider.currentLocale == "en"
                  ? const UnselectedOption(title: "عربي")
                  : const SelectedOption(title: "عربي")),
        ],
      ),
    );
  }
}
