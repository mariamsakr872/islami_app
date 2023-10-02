import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_v2_app/app_provider.dart';
import 'package:islami_v2_app/layout/home_layout.dart';
import 'package:islami_v2_app/modules/hadeth/hadeth_details.dart';
import 'package:islami_v2_app/modules/quran/quran_details_view.dart';
import 'package:provider/provider.dart';

import 'core/application_theme.dart';
import 'modules/splash_screen/splash_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: appProvider.currentTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appProvider.currentLocale),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeLayout.routeName: (context) => const HomeLayout(),
          QuranDetailsView.routeName: (context) => const QuranDetailsView(),
          HadethDetails.routeName: (context) => const HadethDetails(),
        });
  }
}
