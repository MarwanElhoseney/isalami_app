import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/data/model/RadiosModel.dart';

class RadiosItem extends StatefulWidget {
  final Radios radios;
  AudioPlayer audioPlayer;
  RadiosItem({required this.radios,required this.audioPlayer});

  @override
  State<RadiosItem> createState() => _RadiosItemState();
}

class _RadiosItemState extends State<RadiosItem> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.radios.name??"",style: TextStyle(color: Theme.of(context).canvasColor),),
        Spacer(),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
play();
            }, icon: Icon(Icons.play_arrow,size: 45,),color: Theme.of(context).canvasColor,),
            IconButton(

              onPressed: () {
pause();
              }, icon: Icon(Icons.pause,size: 45, ),color: Theme.of(context).canvasColor,),
          ],
        ),
      ],
    );
  }
  void play()async{
    await widget.audioPlayer.play(UrlSource(widget.radios.url??""));
  }
  void pause() async{
    await widget.audioPlayer.stop();
  }
}
