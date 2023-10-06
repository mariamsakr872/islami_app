import 'package:flutter/material.dart';
import 'package:islami_v2_app/app_provider.dart';
import 'package:islami_v2_app/modules/settings/widget/selected_option.dart';
import 'package:islami_v2_app/modules/settings/widget/unselected_option.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context);
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
                appProvider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? SelectedOption(title: local!.dark)
                  : UnselectedOption(title: local!.dark)),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? UnselectedOption(title: local.light)
                  : SelectedOption(title: local.light)),
        ],
      ),
    );
  }
}
