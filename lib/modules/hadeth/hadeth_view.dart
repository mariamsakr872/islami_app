import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_v2_app/modules/hadeth/hadeth_details.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allHadethContent.isEmpty) readFile();
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
          height: 5,
          indent: 10,
          endIndent: 10,
        ),
        Text(
          "الأحاديث",
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
          height: 5,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: HadethContent(
                              title: allHadethContent[index].title,
                              content: allHadethContent[index].content));
                    },
                    child: Text(
                      allHadethContent[index].title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    thickness: 1.2,
                    color: theme.primaryColor,
                    height: 8,
                    indent: 50,
                    endIndent: 50,
                  ),
              itemCount: allHadethContent.length),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);

      HadethContent hadethContent =
          HadethContent(title: title, content: content);

      setState(() {
        allHadethContent.add(hadethContent);
      });
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
