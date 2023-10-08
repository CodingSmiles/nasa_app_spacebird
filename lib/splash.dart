import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nasa_app/models/base_climate.dart';

import 'home.dart';
import 'models/climate.dart';
import 'models/resources.dart';
import 'models/waste.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  List<Climate> dataClimate = [];
  List<BaseClimate> baseClimate = [];
  List<Waste> waste = [];
  List<Resources> resource = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    if (kDebugMode) {
      print(hpw2);
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SpaceBird',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: hpw2 * 9.24,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'Aerospace',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: hpw2 * 9.24,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: hpw2 * 5,
            ),
            Text(
              'Obtaining Data from Firebase',
              style: TextStyle(color: Colors.white, fontSize: hpw2 * 2),
            ),
            SizedBox(
              height: hpw2 * 2,
            ),
            const CircularProgressIndicator(
              color: Colors.amber,
              strokeWidth: 8,
              strokeCap: StrokeCap.round,
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Future getData() async {
    var db = FirebaseFirestore.instance;
    db.collection('data').get().then(
      (querySnapshot) {
        setState(
          () {
            dataClimate = List.from(
              querySnapshot.docs
                  .where((element) => element.id == 'climate')
                  .map(
                    (doc) => Climate.fromSnapshot(doc),
                  ),
            );
            baseClimate = List.from(
              querySnapshot.docs
                  .where((element) => element.id == 'base_climate')
                  .map(
                    (doc) => BaseClimate.fromSnapshot(doc),
                  ),
            );
            waste = List.from(
              querySnapshot.docs.where((element) => element.id == 'waste').map(
                    (doc) => Waste.fromSnapshot(doc),
                  ),
            );
            resource = List.from(
              querySnapshot.docs
                  .where((element) => element.id == 'resources')
                  .map(
                    (doc) => Resources.fromSnapshot(doc),
                  ),
            );
          },
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Home(
              climate: dataClimate,
              baseClimate: baseClimate,
              waste: waste,
              resources: resource,
            ),
          ),
          (route) => false,
        );
      },
      onError: (e) {
        if (kDebugMode) {
          print("Not able to get data: $e");
        }
      },
    );
  }
}
