
import 'exports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Menjar extends StatefulWidget {
  late String txt = '';

  State<Menjar> createState() => _MenjarState();
}

class _MenjarState extends State<Menjar> {

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
                        app.txt = 'fruita';
                        speak();
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Fruita()));
                      },
                      child: Image.asset('img/fruita.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'formatge';
                        speak();
                      },
                      child: Image.asset('img/formatge.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'galeta';
                        speak();
                      },
                      child: Image.asset('img/galeta.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'peix';
                        speak();
                      },
                      child: Image.asset('img/peix.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'pa';
                        speak();
                      },
                      child: Image.asset('img/pa.png', width: 160, height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'verdures';
                        speak();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verdures()));
                      },
                      child: Image.asset('img/verdures.png', width: 160, height: 160, fit: BoxFit.cover)
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
                        app.txt = 'pollastre';
                        speak();
                      },
                      child: Image.asset('img/pollastre.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'carn';
                        speak();
                      },
                      child: Image.asset(
                          'img/carn.png', width: 160, height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'hamburguesa';
                        speak();
                      },
                      child: Image.asset('img/hamburguesa.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'magdalena';
                        speak();
                      },
                      child: Image.asset('img/magdalena.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'iogurt';
                        speak();
                      },
                      child: Image.asset('img/iogurt.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'pastís de poma';
                        speak();
                      },
                      child: Image.asset('img/pastis_poma.png', width: 160, height: 160, fit: BoxFit.cover)
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
                        app.txt = 'xocolata';
                        speak();
                      },
                      child: Image.asset('img/xocolata.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'galeta de xocolata';
                        speak();
                      },
                      child: Image.asset('img/galeta_xocolata.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'pipes';
                        speak();
                      },
                      child: Image.asset('img/pipes.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'sandvitx';
                        speak();
                      },
                      child: Image.asset('img/sandvitx.png', width: 160, height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'puré';
                        speak();
                      },
                      child: Image.asset('img/pure.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'pasta';
                        speak();
                      },
                      child: Image.asset('img/pasta.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),



                ],

              ),

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