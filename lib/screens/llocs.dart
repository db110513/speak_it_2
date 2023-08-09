import 'exports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Llocs extends StatefulWidget {
  const Llocs({Key? key}) : super(key: key);

  State<Llocs> createState() => _LlocsState();
}

class _LlocsState extends State<Llocs> {

  App app = App();
  late String t = app.txt;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Llocs', style: TextStyle(fontSize: 40)),
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
                        t += 'casa';
                      },
                      child: Image.asset('img/casa.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'jardi';
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Cuina()));
                      },
                      child: Image.asset('img/jardi.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'museu';
                      },
                      child: Image.asset('img/museu.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'llibreria';
                      },
                      child: Image.asset('img/llibreria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'spa';
                      },
                      child: Image.asset('img/spa.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'castell';
                      },
                      child: Image.asset('img/castell.png', width: 160,
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
                        t += 'parc de bombers';
                      },
                      child: Image.asset('img/parc_bombers.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),

                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'passeig';
                      },
                      child: Image.asset('img/passeig.png', width: 160,
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
                        t += 'estació de trens';
                      },
                      child: Image.asset('img/est_trens.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'comisaria';
                      },
                      child: Image.asset('img/comisaria.png', width: 160,
                          height: 160,
                          fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        t += 'supermercat';
                      },
                      child: Image.asset('img/supermercat.png', width: 160,
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

}