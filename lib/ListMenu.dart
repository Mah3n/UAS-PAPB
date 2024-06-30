import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 350,
            height: 100,
            color: Color.fromARGB(255, 76, 176, 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bowlRice,
                    color: Color.fromARGB(255, 110, 238, 167),
                    size: 30,
                  ),
                  Text("Menu Spesial",
                      style: TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
            ),
          ),
          Container(
            width: 350,
            height: 100,
            color: Color.fromARGB(255, 244, 66, 54),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.utensils,
                    color: Color.fromARGB(255, 253, 79, 75),
                    size: 30,
                  ),
                  Text("Menu Terlaris",
                      style: TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
            ),
          ),
          Container(
            width: 350,
            height: 100,
            color: Color.fromARGB(255, 33, 150, 243),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.mugHot,
                    color: Color.fromARGB(255, 63, 196, 254),
                    size: 30,
                  ),
                  Text("Minuman",
                      style: TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
