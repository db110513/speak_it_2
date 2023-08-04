import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Persones extends StatefulWidget {
  const Persones({Key? key}) : super(key: key);

  State<Persones> createState() => _PersonesState();
}

class _PersonesState extends State<Persones> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Persones', style: TextStyle(fontSize: 40)),
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