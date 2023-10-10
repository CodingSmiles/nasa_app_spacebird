import 'package:flutter/material.dart';
import 'package:nasa_app/credits.dart';
import 'package:nasa_app/models/base_climate.dart';
import 'package:nasa_app/models/climate.dart';
import 'package:nasa_app/models/waste.dart';
import 'package:nasa_app/widgets/data_point.dart';
import 'models/resources.dart';

class Home extends StatefulWidget {
  final List<Climate> climate;
  final List<BaseClimate> baseClimate;
  final List<Waste> waste;
  final List<Resources> resources;

  const Home({
    super.key,
    required this.climate,
    required this.waste,
    required this.baseClimate,
    required this.resources,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Habitat Dashboard',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => const Credits(),
                ),
              );
            },
            icon: const Icon(Icons.groups),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: hpw2, top: hpw2),
          child: ListView.builder(
            itemCount: widget.climate.length,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'External Data Points',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: hpw2 * 2,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DataPoint(
                            data: widget.climate[index].temperature ?? 1,
                            unit: '°C',
                            title: 'Outside Temperature',
                          ),
                          DataPoint(
                            data: widget.climate[index].pressure ?? 1,
                            unit: ' hPa',
                            title: 'Outside Pressure',
                          ),
                          DataPoint(
                            data: widget.climate[index].humidity ?? 1,
                            unit: '%',
                            title: 'Outside Humidity',
                          ),
                          DataPoint(
                            data: widget.climate[index].co ?? 1,
                            unit: ' µg/m3',
                            title: 'Carbon Monoxide',
                          ),
                          DataPoint(
                            data: widget.climate[index].co ?? 1,
                            unit: ' ppm',
                            title: 'Carbon Dioxide',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DataPoint(
                            data: widget.climate[index].no2 ?? 1,
                            unit:  'µg/m3',
                            title: 'Nitrogen Dioxide',
                          ),
                          DataPoint(
                            data: widget.climate[index].o3 ?? 1,
                            unit: ' µg/m3',
                            title: 'Ozone',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hpw2 * 3,
                      ),
                      Text(
                        'Inside Base Datapoints',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: hpw2 * 2,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DataPoint(
                            data: widget.baseClimate[index].temperature ?? 1,
                            unit: '°C',
                            title: 'Inside Temperature',
                          ),
                          DataPoint(
                            data: widget.baseClimate[index].pressure ?? 1,
                            unit: ' hPa',
                            title: 'Inside Pressure',
                          ),
                          DataPoint(
                            data: widget.baseClimate[index].humidity ?? 1,
                            unit: '%',
                            title: 'Inside Humidity',
                          ),
                          DataPoint(
                            data: widget.baseClimate[index].co2 ?? 1,
                            unit: ' ppm',
                            title: 'Carbon Dioxide Concentration',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hpw2 * 3,
                      ),
                      Text(
                        'Resource Management',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: hpw2 * 2,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DataPoint(
                            data: widget.resources[index].oxygen ?? 1,
                            unit: ' litres',
                            title: 'Stored Oxygen Quantity',
                          ),
                          DataPoint(
                            data: widget.resources[index].food ?? 1,
                            unit: ' kg',
                            title: 'Estimated Food Left',
                          ),
                          DataPoint(
                            data: widget.resources[index].water ?? 1,
                            unit: ' litres',
                            title: 'Estimated Water Left',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hpw2 * 3,
                      ),
                      Text(
                        'Waste Management',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: hpw2 * 2,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DataPoint(
                            data: widget.waste[index].biodegradable ?? 1,
                            unit: ' kg',
                            title: 'Gross Biodegradable Waste',
                          ),
                          DataPoint(
                            data: widget.waste[index].plastics ?? 1,
                            unit: ' kg',
                            title: 'Gross Plastic Waste',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
