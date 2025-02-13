import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera App"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Text(
            "Presionaste el botón $i veces",
            style: TextStyle(
                fontSize: 30,
                color: Colors.pink,
                fontWeight: FontWeight.bold
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          i++;
          setState(() {
            
          });
          print("El valor de i es $i");
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}

