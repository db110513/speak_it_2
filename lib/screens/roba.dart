import 'exports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Roba extends StatefulWidget {
  const Roba({Key? key}) : super(key: key);

  State<Roba> createState() => _RobaState();
}

class _RobaState extends State<Roba> {

  App app = App();

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
    return Scaffold(

      body: Container(

        padding: const EdgeInsets.all(10),

        child: Column(

            children: [

              Bar(),

              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'jeans';
                        speak();
                      },
                      child: Image.asset('img/jeans.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'pantaló curt';
                        speak();
                      },
                      child: Image.asset('img/pant_curt.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'dessuadora';
                        speak();
                      },
                      child: Image.asset('img/dessuadora.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'americana';
                        speak();
                      },
                      child: Image.asset('img/americana.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'taca';
                        speak();
                      },
                      child: Image.asset('img/taca.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'samarreta de tirants';
                        speak();
                      },
                      child: Image.asset('img/samarr_tirants.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
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
                        app.txt = 'camisa de màniga curta';
                        speak();
                      },
                      child: Image.asset('img/camina_mng_crta.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'impermeable';
                        speak();
                      },
                      child: Image.asset('img/impermeable.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'samarreta de màniga llarga';
                        speak();
                      },
                      child: Image.asset('img/samarreta_maniga_llarga.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'jaqueta de punt';
                        speak();
                      },
                      child: Image.asset('img/jaqueta_punt.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'sostenidor';
                        speak();
                      },
                      child: Image.asset('img/sostenidor.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'jersei';
                        speak();
                      },
                      child: Image.asset('img/jersei.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
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
                        app.txt = 'xandall';
                        speak();
                      },
                      child: Image.asset('img/xandall.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'body';
                        speak();
                      },
                      child: Image.asset('img/body.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'mitjó';
                        speak();
                      },
                      child: Image.asset('img/mitjo.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'samarreta';
                        speak();
                      },
                      child: Image.asset('img/samarreta.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'vestit';
                        speak();
                      },
                      child: Image.asset('img/vestit.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'calçotets';
                        speak();
                      },
                      child: Image.asset('img/calcotets.png', width: 160, height: 160, fit: BoxFit.cover)
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