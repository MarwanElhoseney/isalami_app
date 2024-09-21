import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';

class hadeathDetailsScreen extends StatelessWidget {
static const String routeName= "hadeathDetailsScreen";

  @override
  Widget build(BuildContext context) {
    HadethItem args=ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.hadethTitle,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
            ),
          ),
        body: Card(
          margin: EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36 )
          ),
          child: Container(
            alignment: Alignment.center,
              padding: EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Text(args.hadethContent,textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              )),
        ),
      ),
    );
  }
}
