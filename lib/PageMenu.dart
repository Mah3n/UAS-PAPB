import 'package:flutter/material.dart';
import 'package:flutter_application_3/HeaderPromo.dart';
import 'package:flutter_application_3/ListMenu.dart';
import 'package:flutter_application_3/PecelMenu.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({super.key});

  @override
  State<PageMenu> createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: FlutterClipPolygon(
            sides: 6,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.book,
                    color: Colors.black,
                  ),
                  Text("Menu", style: TextStyle(color: Colors.black))
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [FaIcon(FontAwesomeIcons.house), Text("Home")],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.grey,
                  ),
                  Text("Keranjang", style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: CardSwiper(
                cardsCount: 2,
                numberOfCardsDisplayed: 2,
                backCardOffset: const Offset(100, 0),
                padding: const EdgeInsets.all(0),
                cardBuilder:
                    (context, index, percentTresholdX, percentTresholdY) =>
                        HeaderPromo(),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 100,
              child: ListMenu(),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 430,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                    PecelMenu(),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
