import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_v2_app/modules/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quran_details";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFile(args.suraNumber);
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
                    args.suraName,
                    style: theme.textTheme.bodyMedium,
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
                thickness: 1.5,
                color: theme.primaryColor,
                indent: 50,
                endIndent: 50,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    allVerses[index],
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: allVerses.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFile(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");

    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
