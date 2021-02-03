import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class VentuskyScreen extends StatefulWidget {
  static const routename = 'Ventusk_screen';

  @override
  _VentuskyScreenState createState() => _VentuskyScreenState();
}

class _VentuskyScreenState extends State<VentuskyScreen> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            'https://www.marinetraffic.com/en/ais/home/centerx:-12.0/centery:25.0/zoom:4',
      ),
    );
  }
}
