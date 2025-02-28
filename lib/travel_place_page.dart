import 'package:flutter/material.dart';

class TravelPlacePage extends StatelessWidget {
  const TravelPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset(
      'assets/img/montain.jpg',
      width: size.width,
      height: size.height * .30,
      fit: BoxFit.cover,
    );

    Widget titleSection = Padding(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("San Antonio de las Alazanas.",style: TextStyle(fontWeight: FontWeight.bold
                  ),),
                  Text("Arteaga, Coahuila, México", style: TextStyle(color: Colors.blueGrey[600]),)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.amber,),
            Text("41")
          ],
        ),
    );


    return Scaffold(
      body: Column(
        children: [
          imageSection,
          titleSection
        ],
      ),
    );
  }

  Widget _buildBtnColumn(String title, IconData icon, Color color){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text(title, style: TextStyle(color: color),),
        )
      ],
    );
  }
}
