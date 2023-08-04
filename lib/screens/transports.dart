import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Transports extends StatefulWidget {
  const Transports({Key? key}) : super(key: key);

  State<Transports> createState() => _TransportsState();
}

class _TransportsState extends State<Transports> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transports', style: TextStyle(fontSize: 40)),
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