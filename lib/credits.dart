import 'package:flutter/material.dart';

import 'widgets/profile_card.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 10.0),
                ProfileCardWeb(
                  name: "Aadiraj Anil",
                  desc:
                      "Enthusiastic programmer who likes to work with apps and data",
                ),
                ProfileCardWeb(
                  name: "Ayushman Kalita",
                  desc:
                      "Tech nerd with lots of skills and knowledge about rocket science",
                ),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
