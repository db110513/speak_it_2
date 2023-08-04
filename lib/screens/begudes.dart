import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Begudes extends StatefulWidget {
  const Begudes({Key? key}) : super(key: key);

  State<Begudes> createState() => _BegudesState();
}

class _BegudesState extends State<Begudes> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Begudes', style: TextStyle(fontSize: 40)),
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