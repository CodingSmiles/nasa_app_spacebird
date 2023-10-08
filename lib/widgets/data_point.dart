import 'dart:math';
import 'package:flutter/material.dart';

class DataPoint extends StatelessWidget {
  final double data;
  final String unit;
  final String title;

  const DataPoint(
      {super.key, required this.data, required this.unit, required this.title});

  @override
  Widget build(BuildContext context) {
    List<Color> selectColor() {
      var rng = Random();
      var colors = [
        [
          const Color.fromRGBO(65, 151, 211, 1),
          Colors.white,
        ],
        [
          const Color.fromRGBO(68, 112, 48, 1.0),
          Colors.white,
        ],
        [
          const Color.fromRGBO(255, 181, 50, 0.7),
          Colors.black,
        ],
        [
          const Color.fromRGBO(0, 83, 156, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(47, 60, 126, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(16, 24, 32, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(249, 231, 149, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(72, 49, 212, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(204, 243, 129, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(226, 209, 249, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(49, 119, 115, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(153, 0, 17, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(238, 78, 52, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 83, 156, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(47, 60, 126, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(16, 24, 32, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(249, 231, 149, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(72, 49, 212, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(204, 243, 129, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(226, 209, 249, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(49, 119, 115, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(153, 0, 17, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(238, 78, 52, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 200, 50, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(0, 150, 255, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(255, 100, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 70, 150, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 120, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 90, 160, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 60, 10, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 170, 70, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(40, 100, 180, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(20, 80, 150, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 110, 190, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 150, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 100, 170, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 130, 20, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(40, 90, 160, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 120, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 50, 160, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 80, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 30, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 140, 30, 1), // Color
          Colors.black, // Text color (black)
        ],
        [
          const Color.fromRGBO(30, 80, 150, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 110, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(150, 50, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 70, 130, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 100, 170, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 130, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(20, 70, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(110, 40, 90, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(180, 0, 80, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 90, 160, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 120, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 40, 150, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 70, 130, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(160, 30, 90, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 80, 150, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 110, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 50, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 60, 130, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 10, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(170, 30, 100, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 70, 160, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 100, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 30, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 60, 120, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 10, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(160, 20, 90, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 70, 140, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 100, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 40, 130, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 50, 120, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 0, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(150, 20, 80, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 60, 130, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 90, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 20, 120, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 50, 110, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 0, 30, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(200, 0, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(160, 10, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 60, 120, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 80, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 30, 110, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 40, 100, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 0, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(220, 0, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 110, 10, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(150, 10, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 50, 120, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 80, 30, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 10, 100, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 40, 90, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 0, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(200, 0, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 80, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(160, 0, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 50, 100, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 70, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 10, 90, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 30, 80, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 0, 10, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(220, 0, 50, 1), // Color
          Colors.white,
          // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 100, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(150, 0, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(30, 40, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 60, 10, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 0, 80, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(10, 30, 60, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 0, 10, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(200, 0, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 70, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(160, 0, 30, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 30, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 60, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 0, 70, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(0, 20, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(100, 0, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(220, 0, 30, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(70, 50, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(150, 0, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(60, 10, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(130, 0, 40, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(120, 0, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(200, 0, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 30, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(160, 0, 10, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(40, 10, 20, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(50, 0, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(140, 0, 50, 1), // Color
          Colors.white, // Text color (white)
        ],
        [
          const Color.fromRGBO(80, 0, 0, 1), // Color
          Colors.white, // Text color (black)
        ],
        [
          const Color.fromRGBO(50, 0, 0, 1), // Color
          Colors.white, // Text color (white)
        ],
      ];
      return colors[rng.nextInt(colors.length)];
    }

    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    final List<Color> colorS = selectColor();
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        hpw2,
        0,
        hpw2,
      ),
      child: Card(
        elevation: 69,
        color: colorS[0],
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.green,
            width: 4
          ),
          borderRadius: BorderRadius.circular(hpw2 * 2.5),
        ),
        child: Padding(
          padding: EdgeInsets.all(hpw2 * 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: colorS[1],
                  fontWeight: FontWeight.bold,
                  fontSize: hpw2 * 2.5,
                ),
              ),
              SizedBox(
                height: hpw2 * 3,
              ),
              Text(
                '$data$unit',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: colorS[1],
                  fontWeight: FontWeight.w500,
                  fontSize: hpw2 * 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
