import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/data/model/RadiosModel.dart';
import 'package:islami_app/data/model/api_manger.dart';
import 'package:islami_app/radios_item.dart';

class radioTabWidget extends StatefulWidget {
  @override
  State<radioTabWidget> createState() => _radioTabWidgetState();
}

class _radioTabWidgetState extends State<radioTabWidget> {
  late AudioPlayer audioPlayer;
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer=AudioPlayer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }
@override


  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/radio_image.png"),
      Spacer(),
FutureBuilder<List<Radios>?>(future: ApiManger.GetRadios(), builder: (context, snapshot) {
  if(snapshot.connectionState==ConnectionState.waiting){
return Center(child: CircularProgressIndicator());
  }
  else if(snapshot.hasError){
    return Center(
      child: Text(snapshot.hasError.toString()),
    );
  }
  else{
    return Expanded(
      child: ListView.builder(
        physics: PageScrollPhysics(),
        itemExtent: 400,
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data?.length??0,
        itemBuilder:(context, index) {
        return RadiosItem(radios: snapshot.data![index],audioPlayer: audioPlayer,);
      },),
    );
  }
},),
        Spacer()
      ]
    );

  }
}
