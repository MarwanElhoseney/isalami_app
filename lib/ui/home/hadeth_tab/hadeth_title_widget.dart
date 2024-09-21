import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';

class hadethTitleWidget extends StatelessWidget {
  HadethItem hadethItem;
  hadethTitleWidget({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadeathDetailsScreen.routeName,
        arguments: hadethItem
        );
      },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        child: Text(hadethItem.hadethTitle,style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
