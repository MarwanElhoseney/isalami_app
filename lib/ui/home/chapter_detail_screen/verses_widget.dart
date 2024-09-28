import 'package:flutter/material.dart';

class versesWidget extends StatelessWidget {
  String verses;

  versesWidget({required this.verses});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Text(verses,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style:
              Theme.of(context).textTheme.displaySmall),
    );
  }
}
