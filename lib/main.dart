import 'package:flutter/material.dart';
import 'package:islami_v2_app/layout/home_layout.dart';
import 'package:islami_v2_app/modules/hadeth/hadeth_details.dart';
import 'package:islami_v2_app/modules/quran/quran_details_view.dart';

import 'core/application_theme.dart';
import 'modules/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeLayout.routeName: (context) => const HomeLayout(),
          QuranDetailsView.routeName: (context) => const QuranDetailsView(),
          HadethDetails.routeName: (context) => const HadethDetails(),
        });
  }
}
