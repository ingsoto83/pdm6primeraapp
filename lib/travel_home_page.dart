import 'package:flutter/material.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondo.jpg',),
              fit: BoxFit.cover
          )
        ),
        child: Center(
            child: Container(
              width: double.infinity,
              height: 120,
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Travelocity",
                  style: TextStyle(
                      fontFamily: 'Signatra',
                      color: Colors.white,
                      fontSize: 72,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
        )
      ),
    );
  }
}
