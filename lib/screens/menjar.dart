import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Menjar extends StatefulWidget {
  const Menjar({Key? key}) : super(key: key);

  State<Menjar> createState() => _MenjarState();
}

class _MenjarState extends State<Menjar> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Menjar', style: TextStyle(fontSize: 40)),
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