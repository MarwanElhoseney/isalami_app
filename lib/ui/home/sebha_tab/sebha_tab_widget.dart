import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class sebhaTabWidget extends StatefulWidget {

  @override
  State<sebhaTabWidget> createState() => _sebhaTabWidgetState();
}

class _sebhaTabWidgetState extends State<sebhaTabWidget> {
  int counter=0;
  List<String>azkar=[
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "  الله اكبر",

  ];
  int index=0;
  double angle=0;
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(provider.currentTheme==ThemeMode.light ?"assets/images/head_sebha_logo.png"
              :"assets/images/head_sebha_logo.png"),
              Padding(
                padding: const EdgeInsets.only(top: 75),

                child: Transform.rotate(
                  angle:angle ,
                  child: InkWell(
                    onTap: OnTap,
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Image.asset(provider.currentTheme==ThemeMode.light?"assets/images/body_sebha_logo.png"
                    :"assets/images/body_sebha_dark.png"),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text("عدد التسبيحات ",textAlign: TextAlign.center,style: TextStyle(color: Theme.of(context).canvasColor),),
          Container(
            alignment: Alignment.center,
            height: 65,
      width: 70,
            decoration: BoxDecoration(
      color:Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text("$counter",textAlign: TextAlign.center ,style: TextStyle(color: Theme.of(context).hintColor),),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(12),
width: 120,

            decoration: BoxDecoration(
      color:Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text(" ${azkar[index]}",textAlign: TextAlign.center ,style: TextStyle(color: Theme.of(context).hintColor),),
          ),
        ],
      ),
    );

  }
  OnTap(){
    counter++;
    if(counter%33==0){
      index++;
      counter=0;
    }
    if(index==azkar.length){
      index=0;
    }
    angle+=360/33;
    setState(() {

    });
  }



}
