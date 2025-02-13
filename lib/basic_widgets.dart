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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hola Mundo1", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20, left: 8, right: 8, bottom: 10),
            child: Text("Hola Mundo2", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              child: Text("Hola Mundo3", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ejemplo de ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Widgets ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Básicos.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.star,color: Colors.amber,),
            Icon(Icons.star,color: Colors.amber,),
            Icon(Icons.star,color: Colors.amber,),
            Icon(Icons.star,color: Colors.amber,),
            Icon(Icons.star_half,color: Colors.amber,),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){},
                  child: Text(
                    "Delete",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )
              ),
            ],
          )
        ],
      )
    );
  }
}
