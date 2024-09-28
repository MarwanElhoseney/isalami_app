import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';



class themeBottomSheet extends StatefulWidget {



  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {

  @override
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.chandeApplicationTheme(ThemeMode.light);
              },
              child:provider.currentTheme ==ThemeMode.light ?getSelectedTheme("Light"):getUnselectedTheme("light")),
          SizedBox(height: 8,),
          InkWell(
               onTap: () {
                 provider.chandeApplicationTheme(ThemeMode.dark);
               },
              child:provider.currentTheme ==ThemeMode.dark ?getSelectedTheme("dark"):getUnselectedTheme("dark")),
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
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(UnSlectedTheme,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor),),

      ],
    );

  }
}
