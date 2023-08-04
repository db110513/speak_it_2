import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Accions extends StatefulWidget {
  const Accions({Key? key}) : super(key: key);

  State<Accions> createState() => _AccionsState();
}

class _AccionsState extends State<Accions> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Accions', style: TextStyle(fontSize: 40)),
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