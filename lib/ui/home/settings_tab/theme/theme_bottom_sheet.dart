import 'package:flutter/material.dart';



class themeBottomSheet extends StatefulWidget {


  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          getSelectedTheme("Light"),
          SizedBox(height: 8,),
          getUnselectedTheme("Dark"),
        ],
      ),
    );
  }

  Widget getSelectedTheme(String selectedTheme){
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedTheme,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor),),
        Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,),
      ],
    );}

  Widget getUnselectedTheme(String UnSlectedTheme){
   return Text(UnSlectedTheme,style: TextStyle(fontSize: 22,color:Theme.of(context).primaryColor),);

  }
}
