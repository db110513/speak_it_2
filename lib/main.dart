import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {

  _AppState createState() => _AppState();
}

enum TtsState { playing, stopped }

class _AppState extends State<App> {

  late FlutterTts tts;

  late String _tts;
  TtsState _ttsState = TtsState.stopped;

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

    tts.setStartHandler(() {
      setState(() {
        print("Playing");
        _ttsState = TtsState.playing;
      });
    });

    tts.setCompletionHandler(() {
      setState(() {
        print("Complete");
        _ttsState = TtsState.stopped;
      });
    });

    tts.setCancelHandler(() {
      setState(() {
        print("Cancel");
        _ttsState = TtsState.stopped;
      });
    });

    tts.setErrorHandler((message) {
      setState(() {
        print("Error: $message");
        _ttsState = TtsState.stopped;
      });
    });
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home: Scaffold(
          appBar: AppBar(
              title: const Text('TTS', style: TextStyle(fontSize:35, color:Colors.black)),
              backgroundColor: Colors.grey,
              centerTitle: true,
          ),

          body: SingleChildScrollView(

            scrollDirection: Axis.vertical,

            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // input(),
                  button(),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _tts = 'animals';
                          },
                          child: Image.asset('img/animals.png')
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _tts += 'gos';
                          },
                          child: Image.asset('img/gos.png', width:160, height:160,
                              fit: BoxFit.cover)
                      ),
                    ]
                  )


                ]
              ),
            ),



      )));


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

  Widget button() {

    if (_ttsState == TtsState.stopped) {
      print(tts);
      return TextButton(onPressed: speak, child: const Text('PLAY', style: TextStyle(fontSize: 30)));
    }

    else {
      return TextButton(onPressed: stop, child: const Text('STOP', style: TextStyle(fontSize: 30)));
    }

  }

  Future speak() async {

    await tts.setVolume(1);
    await tts.setSpeechRate(0.5);
    await tts.setPitch(1);

    if (_tts != null) {

      if (_tts!.isNotEmpty) {

        await tts.speak(_tts!);

      }
    }
  }

  Future stop() async {
    var result = await tts.stop();

    if (result == 1) {
      setState(() {
        _ttsState = TtsState.stopped;
      });
    }
  }



}
