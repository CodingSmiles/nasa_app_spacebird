import 'package:flutter/material.dart';

import 'widgets/profile_card.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credits"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 10.0),
                const ProfileCardWeb(
                  name: "Aadiraj Anil",
                  desc:
                      "Enthusiastic programmer who likes to work with apps and data",
                ),
                const ProfileCardWeb(
                  name: "Ayushman Kalita",
                  desc:
                      "Tech nerd with lots of skills and knowledge about rocket science",
                ),
                SizedBox(
                  height: hpw2 * 3.0,
                ),
                Text(
                  'Report on usage of this dashboard',
                  style: TextStyle(
                    fontSize: hpw2 * 2,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'https://1drv.ms/w/s!AgrG2pRP_oIygnEfauZLWv1mfzOK',
                  style: TextStyle(
                    fontSize: hpw2 * 2,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
