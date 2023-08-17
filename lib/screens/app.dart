
import 'exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class App extends StatefulWidget {
  late String txt = '';

  _AppState createState() => _AppState();
}

enum TtsState { playing, stopped }

class _AppState extends State<App> {

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
          title: const Text('Speak It !', style: TextStyle(fontSize:35, color: Colors.black)),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),

        body: SingleChildScrollView(

          scrollDirection: Axis.vertical,

          child: Container(

            padding: const EdgeInsets.all(15),

            child: Column(

              children: [

                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(right:27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () => speak(),
                          child: Image.asset('img/play.png', width:80, height:90, fit: BoxFit.cover)
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,

                          ),
                          onPressed: () => speak(),
                          child: Image.asset('img/bckspace.png', width:80, height:90, fit: BoxFit.cover)
                      )
                    ]
                  ),
                ),


                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt += 'animals';
                          // speak();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Animals()));
                        },
                        child: Image.asset('img/animals.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt += 'menjar';
                          // speak();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menjar()));
                        },
                        child: Image.asset('img/menjar.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt += 'emocions';
                          // speak();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Emocions()));
                        },
                        child: Image.asset('img/emocions.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'jocs';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Jocs()));
                        },
                        child: Image.asset('img/jocs.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'jo';
                          speak();
                        },
                        child: Image.asset('img/jo.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'tu';
                          speak();
                        },
                        child: Image.asset('img/tu.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                  ],
                  //button(),
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
                          app.txt = 'begudes';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Begudes()));
                        },
                        child: Image.asset('img/begudes.png', width:160,
                            height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'accions';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Accions()));
                        },
                        child: Image.asset('img/accions.png',
                            width:160, height:160, fit: BoxFit.cover
                        )
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'sanitari';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sanitari()));
                        },
                        child: Image.asset('img/hospital.png', width:160, height:160, fit: BoxFit.cover
                        )
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'persones';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Persones()));
                        },
                        child: Image.asset('img/persones.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'vull';
                          speak();
                        },
                        child: Image.asset('img/vull.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'no vull';
                          speak();
                        },
                        child: Image.asset('img/no_vull.png', width:160, height:160, fit: BoxFit.cover)
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
                          app.txt = 'casa';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Casa()));
                        },
                        child: Image.asset('img/casa.png', width:160,
                            height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'roba';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Roba()));
                        },
                        child: Image.asset('img/roba.png',
                            width:160, height:160, fit: BoxFit.cover
                        )
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'transports';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Transports()));
                        },
                        child: Image.asset('img/transports.png',
                            width:160, height:160, fit: BoxFit.cover
                        )
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'llocs';
                          speak();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Llocs()));
                        },
                        child: Image.asset('img/llocs.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'si';
                          speak();
                        },
                        child: Image.asset('img/si.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          app.txt = 'no';
                          speak();
                        },
                        child: Image.asset('img/no.png', width:160, height:160, fit: BoxFit.cover)
                    ),
                  ],

                )

              ]

            ),

          ),

        ));


  }

  // Widget input() => Container(
  //   alignment: Alignment.topCenter,
  //   padding: const EdgeInsets.all(25.0),
  //
  //   child: TextField(
  //     onChanged: (String value) {
  //       setState(() {
  //         _tts = value;
  //       });
  //     },
  //   ),
  // );

  /*Widget button() {

    if (_ttsState == TtsState.stopped) {
      print(tts);
      return TextButton(onPressed: speak, child: const Text('PLAY', style: TextStyle(fontSize: 30)));
    }

    else {
      return TextButton(onPressed: stop, child: const Text('STOP', style: TextStyle(fontSize: 30)));
    }

  }*/

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