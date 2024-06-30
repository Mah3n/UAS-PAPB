import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PecelMenu extends StatelessWidget {
  const PecelMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Image.asset('assets/images/pecel2.jpg'),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 240,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 210, 57),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Positioned(
                    top: 5,
                    left: 15,
                    child: FaIcon(FontAwesomeIcons.solidStar, size: 13),
                  ),
                  Positioned(
                    top: 3,
                    left: 35,
                    child: Text(
                      "4.5",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text("Pecel Sambel Tumpang",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Pecel Sambel Tumpang, Telur",
                      style: TextStyle(color: Colors.grey)),
                  Text("Bali, Sate Usus, ...",
                      style: TextStyle(color: Colors.grey)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
