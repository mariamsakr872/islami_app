import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_v2_app/app_provider.dart';
import 'package:islami_v2_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_v2_app/modules/quran/quran_view.dart';
import 'package:islami_v2_app/modules/settings/settings_view.dart';
import 'package:islami_v2_app/modules/tasbeh/tasbeh_view.dart';
import 'package:provider/provider.dart';
import '../modules/radio/radio_view.dart';
import 'package:islami_v2_app/core/application_theme.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    const TasbehView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          appProvider.backgroundImage(),
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            local.islami,
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/quran_icon.png"),
                ),
                label: local.quran),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/hadeth_icon.png"),
                ),
                label: local.hadeth),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/sebha_icon.png"),
                ),
                label: local.tasbeh),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/radio_icon.png"),
                ),
                label: local.radio),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: local.settings),
          ],
        ),
      ),
    );
  }
}
