
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'exports.dart';


class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  State<Animals> createState() => _AnimalsState();
}


class _AnimalsState extends State<Animals> {

  App app = new App();

  late String txt;
  late FlutterTts tts;

  void initState() {
    super.initState();
    initTts();
    tts.setLanguage('ca');
  }

  initTts() async {

    tts = FlutterTts();
    await tts.awaitSpeakCompletion(true);

  }

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animals', style: TextStyle(fontSize: 40)),
      ),

      body: Container(

        padding: const EdgeInsets.all(10),

        child: Column(

            children: [
              const SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'cocodril';
                        speak();
                      },
                      child: Image.asset('img/cocodril.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'elefant';
                        speak();
                      },
                      child: Image.asset('img/elefant.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'gos';
                        speak();
                      },
                      child: Image.asset('img/gos.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'lloro';
                        speak();
                      },
                      child: Image.asset('img/lloro.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'peix';
                        speak();
                      },
                      child: Image.asset('img/peix.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        txt = 'pingüi';
                        speak();
                      },
                      child: Image.asset('img/pingui.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                ],
                //button(),
              )
            ]
        ),

      ),

    );

  }


  Future speak() async {

    await tts.setVolume(1);
    await tts.setSpeechRate(0.5);
    await tts.setPitch(1);

    if (txt != null) {

      if (txt!.isNotEmpty) {

        await tts.speak(txt!);

      }
    }
  }


}

