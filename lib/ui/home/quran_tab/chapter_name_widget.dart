import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/chapter_detail_screen/chapter_details_screen.dart';

class chapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  chapterTitleWidget({required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, chapterDetailScreen.routeName,
            arguments: chapterDetailsArgs(title: title, index: index));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class chapterDetailsArgs {
  String title;
  int index;

  chapterDetailsArgs({required this.title, required this.index});
}
