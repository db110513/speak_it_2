
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'exports.dart';


class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  State<Animals> createState() => _AnimalsState();
}


class _AnimalsState extends State<Animals> {

  App app = App();

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
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'cocodril';
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
                        app.txt += 'elefant';
                      },
                      child: Image.asset('img/elefant.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'gos';
                      },
                      child: Image.asset('img/gos.png', width:160, height:160, fit: BoxFit.cover)
                  ),


                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'lloro';
                      },
                      child: Image.asset('img/lloro.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'peix';
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
                        app.txt += 'pingüi';
                      },
                      child: Image.asset('img/pingui.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),

                ],

              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'caball';
                      },
                      child: Image.asset('img/caball.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'ànec';
                      },
                      child: Image.asset('img/anec.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'aranya';
                      },
                      child: Image.asset('img/aranya.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'gat';
                      },
                      child: Image.asset('img/gat.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'hipopotam';
                      },
                      child: Image.asset('img/hipopotam.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'serp';
                      },
                      child: Image.asset('img/serp.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),

                ],

              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'periquito';
                      },
                      child: Image.asset('img/periquito.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'hàmster';
                      },
                      child: Image.asset('img/hamster.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'tortuga';
                      },
                      child: Image.asset('img/tortuga.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'ós';
                      },
                      child: Image.asset('img/os.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'ocell';
                      },
                      child: Image.asset('img/ocell.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt += 'peix pallaso';
                      },
                      child: Image.asset('img/peix_pallaso.png', width:160, height:160, fit: BoxFit.cover)
                  ),

                ],

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

    if (app.txt != null) {

      if (app.txt!.isNotEmpty) {

        await tts.speak(app.txt!);

      }
    }
  }


}

