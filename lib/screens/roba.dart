import 'exports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Roba extends StatefulWidget {
  const Roba({Key? key}) : super(key: key);

  State<Roba> createState() => _RobaState();
}

class _RobaState extends State<Roba> {

  App app = App();
  late String t = app.txt;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Roba', style: TextStyle(fontSize: 40)),
      ),

      body: Container(

        padding: const EdgeInsets.all(10),

        child: Column(

            children: [

              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'jeans';
                      },
                      child: Image.asset('img/jeans.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'pantaló curt';
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Cuina()));
                      },
                      child: Image.asset('img/pant_curt.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'dessuadora';
                      },
                      child: Image.asset('img/dessuadora.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'americana';
                      },
                      child: Image.asset('img/americana.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'taca';
                      },
                      child: Image.asset('img/taca.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'samarreta de tirants';
                      },
                      child: Image.asset('img/samarr_tirants.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
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
                        t += 'camisa de màniga curta';
                      },
                      child: Image.asset('img/camina_mng_crta.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'impermeable';
                      },
                      child: Image.asset('img/impermeable.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'gasolinera';
                      },
                      child: Image.asset('img/gasolinera.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'jaqueta de punt';
                      },
                      child: Image.asset('img/jaqueta_punt.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'sostenidor';
                      },
                      child: Image.asset('img/sostenidor.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'jersei';
                      },
                      child: Image.asset('img/jersei.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
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
                        t += 'botiga';
                      },
                      child: Image.asset('img/botiga.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'copisteria';
                      },
                      child: Image.asset('img/copisteria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'basar';
                      },
                      child: Image.asset('img/basar.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'rellotgeria';
                      },
                      child: Image.asset('img/rellotgeria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'carnisseria';
                      },
                      child: Image.asset('img/carnisseria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'peixateria';
                      },
                      child: Image.asset('img/peixateria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),

                ],

              )

            ]

        ),

      ),

    );

  }

}// TODO Implement this library.