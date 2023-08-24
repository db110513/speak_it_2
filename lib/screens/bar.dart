import 'exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class Bar extends StatefulWidget {

  var message = [];

  State<Bar> createState() => _BarState();
}


class _BarState extends State<Bar> {

  late String txt = '';

  Bar bar = Bar();

  late FlutterTts tts;


  void initState() {
    super.initState();
    initTts();
    tts.setLanguage('ca');
  }

  void dispose() {
    super.dispose();
    tts.stop();
  }

  initTts() async {
    tts = FlutterTts();
    await tts.awaitSpeakCompletion(true);
  }


  Widget build(BuildContext context) {

    return SafeArea(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          const SizedBox(height: 15),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => App()));
              },
              child: Image.asset('img/homeICON.png', width:100, height:100, fit: BoxFit.cover)
          ),

          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset('img/back.png', width:68, height:100, fit: BoxFit.cover)
          ),

          const SizedBox(width: 10),

          Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.bottom,
            child: Container(
              color: Colors.white,
              width: 600,
              height: 100,
            ),
          ),

          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                speak();
              },
              child: Image.asset('img/play.png', width:80, height:100, fit: BoxFit.cover)
          ),

          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Image.asset('img/delete.png', width:95, height:100, fit:
              BoxFit.cover)
          ),

          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Image.asset('img/trash.png', width:68, height:100, fit: BoxFit.cover)
          ),

        ],

      ),

    );

  }


  Future speak() async {

    await tts.setVolume(1);
    await tts.setSpeechRate(0.5);
    await tts.setPitch(1);

    for (int i = 0; i < 10; i++) {

      txt += bar.message[i];

    }

    await tts.speak(txt!);

  }

}