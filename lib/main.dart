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

  String? _tts;
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

        home: Scaffold(
            appBar: AppBar(
                title: const Text('TTS', style: TextStyle(fontSize:35)),
                backgroundColor: Colors.grey,
                centerTitle: true,
            ),

            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [input(), button()])
            )
        )
    );
  }

  Widget input() => Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(25.0),

        child: TextField(
          onChanged: (String value) {
            setState(() {
              _tts = value;
            });
          },
        ),
      );

  Widget button() {

    if (_ttsState == TtsState.stopped) {
      return TextButton(onPressed: speak, child: const Text('Play'));
    }

    else {
      return TextButton(onPressed: stop, child: const Text('Stop'));
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
