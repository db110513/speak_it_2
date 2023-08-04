import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Jocs extends StatefulWidget {
  const Jocs({Key? key}) : super(key: key);

  State<Jocs> createState() => _JocsState();
}

class _JocsState extends State<Jocs> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Jocs', style: TextStyle(fontSize: 40)),
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

          ],

        ),

      ),

    );

  }

}