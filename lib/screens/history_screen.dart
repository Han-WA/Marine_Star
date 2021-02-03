import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marine_star/screens/seefullinfo_screen.dart';

class HistoryScreen extends StatefulWidget {
  static const routename = 'History_screen';
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B9CFC),
        title: Text(
          'History',
          style: TextStyle(
            fontFamily: 'Louis George Cafe',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(20),
                // color: Color(0xFF273c75),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    // color: Color(0xFF273c75),
                    height: 180,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Starting Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.9030',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.7839',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ending Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.9030',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.7839',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF1B9CFC),
                          child: MaterialButton(
                            color: Color(0xFF1B9CFC),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SeeInfoScreen.routename);
                            },
                            child: Text(
                              'See Full Info',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(20),
                // color: Color(0xFF273c75),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    // color: Color(0xFF273c75),
                    height: 180,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Starting Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.3682',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.4803',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ending Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.9318',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.1293',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF1B9CFC),
                          child: MaterialButton(
                            color: Color(0xFF1B9CFC),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SeeInfoScreen.routename);
                            },
                            child: Text(
                              'See Full Info',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(20),
                // color: Color(0xFF273c75),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    // color: Color(0xFF273c75),
                    height: 180,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Starting Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.9030',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.7839',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ending Point',
                          style: TextStyle(
                            fontFamily: 'Louis George Cafe Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.9030',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Longitude',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '17.7839',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF1B9CFC),
                          child: MaterialButton(
                            color: Color(0xFF1B9CFC),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SeeInfoScreen.routename);
                            },
                            child: Text(
                              'See Full Info',
                              style: TextStyle(
                                fontFamily: 'Louis George Cafe Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
