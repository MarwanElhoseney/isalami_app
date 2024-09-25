import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class languageBottomSheet extends StatefulWidget {


  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);

    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
         InkWell(
             onTap: () {
               provider.chandeApplicationLanguage("en");
             },
             child:provider.currentLang=="en"? getSelectedLanguage("English"):getUnselectedLanguage("English")),
          SizedBox(height: 8,),
          InkWell(
              onTap: () {
                provider.chandeApplicationLanguage("ar");
              },
              child:provider.currentLang=="ar"?getSelectedLanguage("العرييه"): getUnselectedLanguage("العربيه"))

      
        ],
      ),
    );
  }

 Widget getSelectedLanguage(String selectedLanguage){
  return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text(selectedLanguage,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor),),
  Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,),
  ],
  );}
  Widget getUnselectedLanguage(String UnSlectedLanguage){
    
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(UnSlectedLanguage,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor),),

     ],
   );
    
  }
}
