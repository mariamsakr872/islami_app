import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  double angle = 0;
  int currentIndex = 0;
  List<String> azkar = [
    "سبحان الله",
    "الله اكبر",
    "استغفر الله",
    "لا اله الا الله",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Image.asset("assets/images/head_of_sebha.png")),
              Container(
                  margin: const EdgeInsets.only(top: 70, bottom: 30),
                  child: Transform.rotate(
                      angle: angle,
                      child: GestureDetector(
                          onTap: () {
                            clickOnSebha();
                          },
                          child:
                              Image.asset("assets/images/body_of_sebha.png")))),
            ],
          ),
          const Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
          ),
          Container(
            width: 80,
            height: 65,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.primaryColor,
            ),
            child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: mediaQuery.width * 0.8,
            margin: const EdgeInsets.only(top: 35, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.primaryColor,
            ),
            child: Text(
              azkar[currentIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void clickOnSebha() {
    angle += 3;

    if (counter == 30) {
      counter = 0;
      currentIndex++;
      currentIndex = currentIndex % 3;
    }
    counter++;
    setState(() {});
  }
}
