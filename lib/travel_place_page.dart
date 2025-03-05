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
    Widget imageSectionL = Image.asset(
      'assets/img/montain.jpg',
      width: size.width * .40,
      height: size.height,
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
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn('CALL', Icons.call, Colors.blue),
        _buildBtnColumn('ROUTE', Icons.near_me, Colors.blue),
        _buildBtnColumn('SHARE', Icons.share, Colors.blue),
      ],
    );
    Widget dscSection = Padding(
      padding: EdgeInsets.all(32),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet nisi vel magna bibendum ultricies ac at nisl. Duis consectetur condimentum venenatis. Integer pellentesque porttitor tortor et placerat. Aenean quis dictum enim, eu sodales elit. Nulla facilisi. Vivamus placerat nisl a massa elementum, sit amet lacinia diam venenatis. Aliquam varius risus vitae tortor fringilla feugiat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed non lectus accumsan, pulvinar neque ut, vulputate sem. Quisque maximus turpis vel ante iaculis laoreet. Integer lacinia orci sed leo feugiat hendrerit. Etiam pulvinar, sapien rhoncus vehicula pretium, metus dui pellentesque tellus, eu consequat lorem nibh a augue.'
        'Aenean tincidunt tortor ut tristique porttitor. Quisque arcu metus, venenatis ac commodo pharetra, suscipit imperdiet est. Nunc vel fringilla arcu. Nullam bibendum, sapien in tristique lobortis, elit arcu vestibulum orci, non maximus lectus sapien sed nibh. Nam eget ultrices sem, sit amet auctor nisi. Integer mollis nibh magna, nec efficitur purus pulvinar vel. Aliquam nec congue sem, et molestie erat. Phasellus convallis scelerisque sapien, et molestie magna rhoncus id. Nunc suscipit urna eget lacus ultrices, nec accumsan augue consectetur.',softWrap: true, textAlign: TextAlign.justify,),
    );

    return Scaffold(
      body: OrientationBuilder(
          builder: (context, orientacion) {
            if(orientacion == Orientation.portrait){
              return SingleChildScrollView(
                child: Column(
                  children: [
                    imageSection,
                    titleSection,
                    buttonsSection,
                    dscSection
                  ],
                ),
              );
            }
            return Row(
              children: [
                imageSectionL,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        titleSection,
                        buttonsSection,
                        dscSection
                      ],
                    ),
                  ),
                )
              ],
            );
          }
      )
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
