import 'package:flutter/material.dart';
import 'package:islami_v2_app/app_provider.dart';
import 'package:islami_v2_app/modules/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami_v2_app/modules/settings/widget/setting_widget.dart';
import 'package:islami_v2_app/modules/settings/widget/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context);

    return Column(
      children: [
        SettingWidget(
            title: local!.language,
            selectedOption:
                appProvider.currentLocale == "en" ? "English" : "عربي",
            onClicked: () {
              onLanguageClicked(context);
            }),
        SettingWidget(
            title: local.theme,
            selectedOption: appProvider.isDark() ? local.dark : local.light,
            onClicked: () {
              onThemeClicked(context);
            }),
      ],
    );
  }

  onLanguageClicked(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheetWidget(),
    );
  }

  onThemeClicked(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomSheetWidget(),
    );
  }
}
