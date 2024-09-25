 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';
import 'package:provider/provider.dart';

class hadeathDetailsScreen extends StatelessWidget {
static const String routeName= "hadeathDetailsScreen";

  @override
  Widget build(BuildContext context) {
    settingsProvider provider=Provider.of<settingsProvider>(context);

    HadethItem args=ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(provider.getBackGrounImage()))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.hadethTitle,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
            ),
          ),
        body: Card(
          color:Theme.of(context).primaryColor,
          margin: EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36 )
          ),
          child: Container(
            alignment: Alignment.center,
              padding: EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Text(args.hadethContent,textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.displaySmall),
              )),
        ),
      ),
    );
  }
}
