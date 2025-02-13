import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Básicos"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("Hola",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),
          ),
          Text("Hola",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),
          ),
          Text("Hola",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),
          ),
          Text("Hola",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star_half, color: Colors.yellow,),
            ],
          )
        ],
      )
    );
  }
}
