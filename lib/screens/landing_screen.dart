import 'package:flutter/material.dart';
import 'package:marine_star/model/env_model.dart';
import 'package:marine_star/screens/history_screen.dart';
import 'package:marine_star/screens/profile_screen.dart';
import 'package:marine_star/screens/sos_screen.dart';
import 'package:marine_star/screens/ventusky_screen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import '../api.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Api _api = new Api();

  List<String> env_fac = [
    "waterTemperature",
    "wavePeriod",
    "waveDirection",
    "waveHeight",
    "windWaveDirection",
    "windWaveHeight",
    "windWavePeriod",
    "swellPeriod",
    "secondarySwellPeriod",
    "swellDirection",
    "secondarySwellDirection",
    "swellHeight",
    "secondarySwellHeight",
    "windSpeed",
    "windSpeed20m",
    "windSpeed100m",
    "windSpeed1000hpa",
    "windDirection",
    "windDirection20m",
    "windDirection100m",
    "windDirection1000hpa",
    "airTemperature",
    "airTemperature80m",
    "airTemperature1000hpa",
    "precipitation",
    "gust",
    "cloudCover",
    "humidity",
    "pressure",
    "visibility",
    "currentSpeed",
    "currentDirection",
    "iceCover",
    "snowDepth",
    "seaLevel",
  ];

  Widget ApiData(
    String label,
    dynamic value,
  ) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.navigate_next,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "$label :  $value",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    const url =
        'https://www.marinetraffic.com/en/ais/home/centerx:-12.0/centery:25.0/zoom:4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFF1B9CFC),
          title: Text(
            'Marine Star',
            style: TextStyle(
              fontFamily: 'Louis George Cafe',
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                Navigator.pushNamed(context, HistoryScreen.routename);
              },
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: EdgeInsets.only(top: 14, left: 15),
                height: 60,
                color: Colors.blueAccent,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Material(
                elevation: 5,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.routename);
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
              Material(
                elevation: 5,
                child: MaterialButton(
                  onPressed: () {
                    _launchURL();
                  },
                  child: Text(
                    "Route",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
              Material(
                elevation: 5,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SosScreen.routename);
                  },
                  child: Text(
                    "SOS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: FutureBuilder<EnvFacModel>(
          future: _api.EnvData(
            env_fac.join(","),
          ),
          builder: (context, snapshot) {
            EnvFacModel env = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.20,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 56,
                          ),
                          height: size.height * 0.4 - 27,
                          decoration: BoxDecoration(
                            color: Color(0xFF1B9CFC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Latitude',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Louis George Cafe Bold',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Longitude',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Louis George Cafe Bold',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 54,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.blue.withOpacity(0.23),
                                ),
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '58.7894',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '17.8081',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.20,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 56,
                          ),
                          height: size.height * 0.4 - 27,
                          decoration: BoxDecoration(
                            color: Color(0xFF1B9CFC),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(27),
                              bottomLeft: Radius.circular(27),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Latitude',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Louis George Cafe Bold',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Longitude',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Louis George Cafe Bold',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 54,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.blue.withOpacity(0.23),
                                ),
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '18.9454',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '72.8441',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image(
                          image: AssetImage(
                            'assets/images/airquality.gif',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image(
                          image: AssetImage(
                            'assets/images/could.gif',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image(
                          image: AssetImage(
                            'assets/images/temprature.gif',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image(
                          image: AssetImage(
                            'assets/images/waves.gif',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: FloatingActionButton(
                      onPressed: () => showMaterialModalBottomSheet(
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      child: Text(
                                        'Environmental Conditions Rate - 75 %',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily: "Louis George Cafe Bold",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Material(
                                  color: Colors.red,
                                  child: ApiData('AirTemperature',
                                      env.airTemperature.noaa),
                                ),
                                ApiData('AirTemperature1000hpa',
                                    env.airTemperature1000Hpa.noaa),
                                ApiData('AirTemperature80m',
                                    env.airTemperature80M.noaa),
                                Material(
                                    color: Colors.red,
                                    child: ApiData(
                                        'CloudCover', env.cloudCover.noaa)),
                                ApiData('CurrentDirection',
                                    env.currentDirection.meto),
                                ApiData('CurrentSpeed', env.currentSpeed.meto),
                                ApiData("Gust", env.gust.noaa),
                                ApiData("Humidity", env.gust.noaa),
                                ApiData("Pressure", env.pressure.noaa),
                                ApiData("WindSpeed", env.windSpeed.noaa),
                                ApiData(
                                    "WindDirection", env.windDirection.noaa),
                                ApiData("IceCover", env.iceCover.noaa),
                                ApiData(
                                    "Precipitation", env.precipitation.noaa),
                                ApiData("SeaLevel", env.seaLevel.meto),
                                ApiData(
                                    "SwellDirection", env.swellDirection.noaa),
                                Material(
                                    color: Colors.redAccent,
                                    child: ApiData("SwellHeight",
                                        env.swellDirection.noaa)),
                                ApiData("SwellPeriod", env.swellPeriod.noaa),
                                ApiData("Secoundary Swell Direction",
                                    env.secondarySwellDirection.noaa),
                                ApiData("Secoundary Swell Height",
                                    env.secondarySwellHeight.noaa),
                                ApiData("Secoundary Swell Period",
                                    env.secondarySwellPeriod.noaa),
                              ],
                            ),
                          ),
                        ),
                      ),
                      child: Icon(Icons.api),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
