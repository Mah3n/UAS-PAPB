import 'package:flutter/material.dart';

class HeaderPromo extends StatelessWidget {
  const HeaderPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/pecel.jpg',
            width: 400,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black])),
          ),
          Positioned(
            bottom: 40,
            left: 15,
            child: Text(
              "Promo 20%",
              style: TextStyle(color: Colors.yellow, fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            child: Text(
              "Untuk 10 Pembeli Pertama",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
