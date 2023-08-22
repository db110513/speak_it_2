import 'package:flutter/material.dart';
import 'exports.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {

  Widget build(BuildContext context) {

    return SafeArea(
      child: Row(
        children: [

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => App()));
              },
              child: Image.asset('img/homeICON.png', width:100, height:100, fit: BoxFit.cover)
          ),
          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset('img/back.png', width:68, height:100, fit:
              BoxFit.cover)
          ),
          const SizedBox(width: 10),

          Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.bottom,
            child: Container(
              color: Colors.white,
              width: 600,
              height: 100,
            ),
          ),
          const SizedBox(width: 10),


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Image.asset('img/play.png', width:80, height:100, fit:
              BoxFit.cover)
          ),
          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Image.asset('img/delete.png', width:95, height:100, fit:
              BoxFit.cover)
          ),
          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Image.asset('img/trash.png', width:68, height:100, fit: BoxFit.cover)
          ),

        ],
      ),
    );

  }

}