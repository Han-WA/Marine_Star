import 'package:flutter/material.dart';

class SosScreen extends StatefulWidget {
  static const routename = 'Sos_screen';

  @override
  _SosScreenState createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          'SOS',
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 200.0, left: 120),
          child: Material(
            elevation: 7,
            borderRadius: BorderRadius.circular(30),
            color: Colors.red,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "SOS",
                  style: TextStyle(
                    fontFamily: "Louis George Cafe Bold",
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
