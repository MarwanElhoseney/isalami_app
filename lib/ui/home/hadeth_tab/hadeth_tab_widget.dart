import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_title_widget.dart';

class hadethTabWidget extends StatefulWidget {
  @override
  State<hadethTabWidget> createState() => _hadethTabWidgetState();
}

class _hadethTabWidgetState extends State<hadethTabWidget> {
  List<HadethItem>allAhadeth=[];

  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty){
      loadHadethFile();
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
    child: Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_logo.png")),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border:Border.symmetric(horizontal: BorderSide( color: Theme.of(context).primaryColor,width: 2)),

          ),
          child: Text("Ahadeth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),),
        ),
        Expanded(
          flex: 3,
          child:allAhadeth.isEmpty? Center(child: CircularProgressIndicator()):
          ListView.separated(itemBuilder: (context, index) => hadethTitleWidget(hadethItem: allAhadeth[index]),
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 66),
              ),
              itemCount: allAhadeth.length),
        )
      ],
    )
    );
  }

  void loadHadethFile()async{
   String fileContent=await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String>ahadethList=fileContent.trim().split("#");
    for(int i = 0 ; i<ahadethList.length;i++){
      String singleHadeth=ahadethList[i];
      List <String> hadethLines= singleHadeth.trim().split("\n");
      String hadethTitle=hadethLines[0];
      hadethLines.remove(0);
      String hadethContent =hadethLines.join("\n");
      HadethItem h =HadethItem(hadethTitle: hadethTitle, hadethContent: hadethContent);
      allAhadeth.add(h);
      setState(() {

      });
    }
  }
}
