import 'package:flutter/material.dart';

class ProfileCardWeb extends StatefulWidget {
  final String name;
  final String desc;

  const ProfileCardWeb({
    super.key,
    required this.name,
    required this.desc,
  });

  @override
  State<ProfileCardWeb> createState() => _ProfileCardWebState();
}

class _ProfileCardWebState extends State<ProfileCardWeb> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return Padding(
      padding: EdgeInsets.only(
        left: hpw2 * 4,
        right: hpw2 * 4,
        bottom: hpw2 * 4,
      ),
      child: Card(
        color: Colors.white12,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.green,
            width: 3
          ),
          borderRadius: BorderRadius.circular(hpw2 * 1.2),
        ),
        child: Padding(
          padding: EdgeInsets.all(hpw2 * 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: hpw2 * 1.5,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: hpw2 * 4,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: hpw2 * 2,
              ),
              Text(
                widget.desc,
                style: TextStyle(
                  fontSize: hpw2 * 2,
                  fontFamily: 'Inter',
                  color: Colors.white,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
