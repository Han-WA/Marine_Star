import 'package:flutter/material.dart';

class SeeInfoScreen extends StatefulWidget {
  static const routename = 'Seeinfo_screen';

  @override
  _SeeInfoScreenState createState() => _SeeInfoScreenState();
}

class _SeeInfoScreenState extends State<SeeInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'See More Info',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          "Distance Travelled - 2 miles\n\n Average Speed - 3 mile per hour\n\n Time Taken - 40 min\n\n Pressure - 997.45\n\n WindSpeed - 3.3\n\n WindDirection - 264",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
