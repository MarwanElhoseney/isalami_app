import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/chapter_detail_screen/verses_widget.dart';
import 'package:islami_app/ui/home/quran_tab/chapter_name_widget.dart';
import 'package:provider/provider.dart';

class chapterDetailScreen extends StatefulWidget {
  static const String routeName = "chapterDetailsScreen";

  @override
  State<chapterDetailScreen> createState() => _chapterDetailScreenState();
}

class _chapterDetailScreenState extends State<chapterDetailScreen> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);

    chapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as chapterDetailsArgs;

    if (verse.isEmpty) {
      readFile(args.index);
    }
    ;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(provider.getBackGrounImage()))),
       child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: verse.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) =>
                    versesWidget(verses: verse[index]),
                separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).dividerColor,
                      height: 2,
                    ),
                itemCount: verse.length),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLine = fileContent.split("\n");
    verse = suraLine;
    setState(() {});
  }
}
