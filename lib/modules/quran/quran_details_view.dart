import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const String routeName = "quran_details";

  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin:
              const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 120),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "sura name",
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.play_circle,
                    size: 32,
                  ),
                ],
              ),
              Divider(
                thickness: 1.2,
                color: theme.primaryColor,
                indent: 50,
                endIndent: 50,
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
