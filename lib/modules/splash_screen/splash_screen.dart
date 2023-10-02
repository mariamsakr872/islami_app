import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_v2_app/app_provider.dart';
import 'package:islami_v2_app/core/application_theme.dart';
import 'package:islami_v2_app/layout/home_layout.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset(
        appProvider.splashBackground(),
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
