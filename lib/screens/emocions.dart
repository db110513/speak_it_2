import 'package:flutter/material.dart';

class Emocions extends StatefulWidget {
  const Emocions({Key? key}) : super(key: key);

  State<Emocions> createState() => _EmocionsState();
}

class _EmocionsState extends State<Emocions> {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Emocions', style: TextStyle(fontSize: 40)),
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