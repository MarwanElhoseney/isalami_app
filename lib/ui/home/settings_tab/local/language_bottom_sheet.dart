import 'package:flutter/material.dart';

class languageBottomSheet extends StatefulWidget {


  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
         getSelectedLanguage("English"),
          SizedBox(height: 8,),
          getUnselectedLanguage("العربيه")

      
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
    
   return Text(UnSlectedLanguage,style: TextStyle(fontSize: 22,color: Colors.black),);
    
  }
}
