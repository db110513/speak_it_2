
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

  late String t = app.txt;

  initTts() async {
    tts = FlutterTts();
    await tts.awaitSpeakCompletion(true);
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Menjar', style: TextStyle(fontSize: 40)),
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
                        t += 'fruita';
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
                        t += 'formatge';
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
                        t += 'galeta';
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
                        t += 'peix';
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
                        t += 'pa';
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
                        t += 'verdures';
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
                        t += 'pastanaga';
                      },
                      child: Image.asset('img/pastanaga.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'carn';
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
                        t += 'hamburguesa';
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
                        t += 'dolços';
                      },
                      child: Image.asset(
                          'img/dolcos.png', width: 160, height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'postres';
                      },
                      child: Image.asset('img/postres.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'marisc';
                      },
                      child: Image.asset('img/marisc.png', width: 160,
                          height: 160, fit: BoxFit.cover)
                  ),

                ],

              )

            ]

        ),

      ),

    );
  }
}