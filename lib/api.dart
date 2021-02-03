import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'model/env_model.dart';

String serverKey =
    "dd34c836-5ce6-11eb-b2a7-0242ac130002-dd34c8ae-5ce6-11eb-b2a7-0242ac130002";
String url =
    "https://api.stormglass.io/v2/weather/point?lat=58.7894&lng=17.8081&params=";

class Api {
  Future<EnvFacModel> EnvData(String data) async {
    print("Env API called");
    final response = await http.get(
      url + data,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "Authorization": '$serverKey',
      },
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return EnvFacModel.fromJson(json.decode(response.body)['hours'][0]);
    } else {
      print('This is Error');
    }
  }
}
