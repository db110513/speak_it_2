import 'exports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Transports extends StatefulWidget {
  const Transports({Key? key}) : super(key: key);

  State<Transports> createState() => _TransportsState();
}

class _TransportsState extends State<Transports> {

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

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transports', style: TextStyle(fontSize: 40)),
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Column(

            children: [

              const SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'bus';
                        speak();
                      },
                      child: Image.asset('img/bus.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'vaixell';
                        speak();
                      },
                      child: Image.asset('img/vaixell.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'globus';
                        speak();
                      },
                      child: Image.asset('img/globus.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'tren';
                        speak();
                      },
                      child: Image.asset('img/tren.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'bicicleta';
                        speak();
                      },
                      child: Image.asset('img/bici.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'moto';
                        speak();
                      },
                      child: Image.asset('img/moto.png', width:160,
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
                        app.txt = 'tramvia';
                        speak();
                      },
                      child: Image.asset('img/tramvia.png', width:160,
                          height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'submarí';
                        speak();
                      },
                      child: Image.asset('img/submari.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'avió';
                        speak();
                      },
                      child: Image.asset('img/avio.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'cotxe';
                        speak();
                      },
                      child: Image.asset('img/cotxe.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'funicular';
                        speak();
                      },
                      child: Image.asset('img/funicular.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'ambulància';
                        speak();
                      },
                      child: Image.asset('img/ambulancia.png', width:160, height:160, fit: BoxFit.cover)
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
                        app.txt = 'camió';
                        speak();
                      },
                      child: Image.asset('img/camio.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'helicòpter';
                        speak();
                      },
                      child: Image.asset('img/helicopter.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'llanxa';
                        speak();
                      },
                      child: Image.asset('img/llanxa.png', width:160, height:160, fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'furgoneta';
                        speak();
                      },
                      child: Image.asset('img/furgoneta.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'patinet elèctric';
                        speak();
                      },
                      child: Image.asset('img/patinet_electric.png', width:160, height:160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        app.txt = 'coet';
                        speak();
                      },
                      child: Image.asset('img/coet.png', width:160,
                          height:160, fit: BoxFit.cover)
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