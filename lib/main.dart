import 'package:flutter/material.dart';
import 'package:marine_star/screens/history_screen.dart';
import 'package:marine_star/screens/profile_screen.dart';
import 'package:marine_star/screens/seefullinfo_screen.dart';
import 'package:marine_star/screens/sos_screen.dart';
import 'package:marine_star/screens/ventusky_screen.dart';
import 'screens/landing_screen.dart';

void main() {
  runApp(
    MarineStar(),
  );
}

class MarineStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => LandingScreen(),
        HistoryScreen.routename: (ctx) => HistoryScreen(),
        SeeInfoScreen.routename: (ctx) => SeeInfoScreen(),
        SosScreen.routename: (ctx) => SosScreen(),
        ProfileScreen.routename: (ctx) => ProfileScreen(),
        VentuskyScreen.routename: (ctx) => VentuskyScreen(),
      },
    );
  }
}
