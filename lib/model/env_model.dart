import 'dart:convert';

EnvFacModel envFacModelFromJson(String str) =>
    EnvFacModel.fromJson(json.decode(str));

String envFacModelToJson(EnvFacModel data) => json.encode(data.toJson());

class EnvFacModel {
  EnvFacModel({
    this.airTemperature,
    this.airTemperature1000Hpa,
    this.airTemperature80M,
    this.cloudCover,
    this.currentDirection,
    this.currentSpeed,
    this.gust,
    this.humidity,
    this.iceCover,
    this.precipitation,
    this.pressure,
    this.seaLevel,
    this.secondarySwellDirection,
    this.secondarySwellHeight,
    this.secondarySwellPeriod,
    this.snowDepth,
    this.swellDirection,
    this.swellHeight,
    this.swellPeriod,
    this.time,
    this.visibility,
    this.waterTemperature,
    this.waveDirection,
    this.waveHeight,
    this.wavePeriod,
    this.windDirection,
    this.windDirection1000Hpa,
    this.windDirection100M,
    this.windDirection20M,
    this.windSpeed,
    this.windSpeed1000Hpa,
    this.windSpeed100M,
    this.windSpeed20M,
    this.windWaveDirection,
    this.windWaveHeight,
    this.windWavePeriod,
  });

  AirTemperature airTemperature;
  AirTemperature1000Hpa airTemperature1000Hpa;
  AirTemperature1000Hpa airTemperature80M;
  AirTemperature cloudCover;
  Current currentDirection;
  Current currentSpeed;
  AirTemperature gust;
  AirTemperature humidity;
  AirTemperature1000Hpa iceCover;
  AirTemperature precipitation;
  AirTemperature pressure;
  SeaLevel seaLevel;
  AirTemperature1000Hpa secondarySwellDirection;
  AirTemperature1000Hpa secondarySwellHeight;
  AirTemperature1000Hpa secondarySwellPeriod;
  AirTemperature1000Hpa snowDepth;
  SwellDirection swellDirection;
  SwellDirection swellHeight;
  SwellDirection swellPeriod;
  DateTime time;
  AirTemperature visibility;
  WaterTemperature waterTemperature;
  Map<String, double> waveDirection;
  Map<String, double> waveHeight;
  Map<String, double> wavePeriod;
  AirTemperature windDirection;
  AirTemperature1000Hpa windDirection1000Hpa;
  AirTemperature1000Hpa windDirection100M;
  AirTemperature1000Hpa windDirection20M;
  AirTemperature windSpeed;
  AirTemperature1000Hpa windSpeed1000Hpa;
  AirTemperature1000Hpa windSpeed100M;
  AirTemperature1000Hpa windSpeed20M;
  SwellDirection windWaveDirection;
  SwellDirection windWaveHeight;
  SwellDirection windWavePeriod;

  factory EnvFacModel.fromJson(Map<String, dynamic> json) => EnvFacModel(
        airTemperature: AirTemperature.fromJson(json["airTemperature"]),
        airTemperature1000Hpa:
            AirTemperature1000Hpa.fromJson(json["airTemperature1000hpa"]),
        airTemperature80M:
            AirTemperature1000Hpa.fromJson(json["airTemperature80m"]),
        cloudCover: AirTemperature.fromJson(json["cloudCover"]),
        currentDirection: Current.fromJson(json["currentDirection"]),
        currentSpeed: Current.fromJson(json["currentSpeed"]),
        gust: AirTemperature.fromJson(json["gust"]),
        humidity: AirTemperature.fromJson(json["humidity"]),
        iceCover: AirTemperature1000Hpa.fromJson(json["iceCover"]),
        precipitation: AirTemperature.fromJson(json["precipitation"]),
        pressure: AirTemperature.fromJson(json["pressure"]),
        seaLevel: SeaLevel.fromJson(json["seaLevel"]),
        secondarySwellDirection:
            AirTemperature1000Hpa.fromJson(json["secondarySwellDirection"]),
        secondarySwellHeight:
            AirTemperature1000Hpa.fromJson(json["secondarySwellHeight"]),
        secondarySwellPeriod:
            AirTemperature1000Hpa.fromJson(json["secondarySwellPeriod"]),
        snowDepth: AirTemperature1000Hpa.fromJson(json["snowDepth"]),
        swellDirection: SwellDirection.fromJson(json["swellDirection"]),
        swellHeight: SwellDirection.fromJson(json["swellHeight"]),
        swellPeriod: SwellDirection.fromJson(json["swellPeriod"]),
        time: DateTime.parse(json["time"]),
        visibility: AirTemperature.fromJson(json["visibility"]),
        waterTemperature: WaterTemperature.fromJson(json["waterTemperature"]),
        waveDirection: Map.from(json["waveDirection"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        waveHeight: Map.from(json["waveHeight"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        wavePeriod: Map.from(json["wavePeriod"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        windDirection: AirTemperature.fromJson(json["windDirection"]),
        windDirection1000Hpa:
            AirTemperature1000Hpa.fromJson(json["windDirection1000hpa"]),
        windDirection100M:
            AirTemperature1000Hpa.fromJson(json["windDirection100m"]),
        windDirection20M:
            AirTemperature1000Hpa.fromJson(json["windDirection20m"]),
        windSpeed: AirTemperature.fromJson(json["windSpeed"]),
        windSpeed1000Hpa:
            AirTemperature1000Hpa.fromJson(json["windSpeed1000hpa"]),
        windSpeed100M: AirTemperature1000Hpa.fromJson(json["windSpeed100m"]),
        windSpeed20M: AirTemperature1000Hpa.fromJson(json["windSpeed20m"]),
        windWaveDirection: SwellDirection.fromJson(json["windWaveDirection"]),
        windWaveHeight: SwellDirection.fromJson(json["windWaveHeight"]),
        windWavePeriod: SwellDirection.fromJson(json["windWavePeriod"]),
      );

  Map<String, dynamic> toJson() => {
        "airTemperature": airTemperature.toJson(),
        "airTemperature1000hpa": airTemperature1000Hpa.toJson(),
        "airTemperature80m": airTemperature80M.toJson(),
        "cloudCover": cloudCover.toJson(),
        "currentDirection": currentDirection.toJson(),
        "currentSpeed": currentSpeed.toJson(),
        "gust": gust.toJson(),
        "humidity": humidity.toJson(),
        "iceCover": iceCover.toJson(),
        "precipitation": precipitation.toJson(),
        "pressure": pressure.toJson(),
        "seaLevel": seaLevel.toJson(),
        "secondarySwellDirection": secondarySwellDirection.toJson(),
        "secondarySwellHeight": secondarySwellHeight.toJson(),
        "secondarySwellPeriod": secondarySwellPeriod.toJson(),
        "snowDepth": snowDepth.toJson(),
        "swellDirection": swellDirection.toJson(),
        "swellHeight": swellHeight.toJson(),
        "swellPeriod": swellPeriod.toJson(),
        "time": time.toIso8601String(),
        "visibility": visibility.toJson(),
        "waterTemperature": waterTemperature.toJson(),
        "waveDirection": Map.from(waveDirection)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "waveHeight":
            Map.from(waveHeight).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "wavePeriod":
            Map.from(wavePeriod).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "windDirection": windDirection.toJson(),
        "windDirection1000hpa": windDirection1000Hpa.toJson(),
        "windDirection100m": windDirection100M.toJson(),
        "windDirection20m": windDirection20M.toJson(),
        "windSpeed": windSpeed.toJson(),
        "windSpeed1000hpa": windSpeed1000Hpa.toJson(),
        "windSpeed100m": windSpeed100M.toJson(),
        "windSpeed20m": windSpeed20M.toJson(),
        "windWaveDirection": windWaveDirection.toJson(),
        "windWaveHeight": windWaveHeight.toJson(),
        "windWavePeriod": windWavePeriod.toJson(),
      };
}

class AirTemperature {
  AirTemperature({
    this.dwd,
    this.noaa,
    this.sg,
    this.smhi,
    this.icon,
  });

  double dwd;
  double noaa;
  double sg;
  double smhi;
  double icon;

  factory AirTemperature.fromJson(Map<String, dynamic> json) => AirTemperature(
        dwd: json["dwd"] == null ? null : json["dwd"].toDouble(),
        noaa: json["noaa"].toDouble(),
        sg: json["sg"].toDouble(),
        smhi: json["smhi"].toDouble(),
        icon: json["icon"] == null ? null : json["icon"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "dwd": dwd == null ? null : dwd,
        "noaa": noaa,
        "sg": sg,
        "smhi": smhi,
        "icon": icon == null ? null : icon,
      };
}

class AirTemperature1000Hpa {
  AirTemperature1000Hpa({
    this.noaa,
    this.sg,
  });

  double noaa;
  double sg;

  factory AirTemperature1000Hpa.fromJson(Map<String, dynamic> json) =>
      AirTemperature1000Hpa(
        noaa: json["noaa"].toDouble(),
        sg: json["sg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "noaa": noaa,
        "sg": sg,
      };
}

class Current {
  Current({
    this.fcoo,
    this.meto,
    this.sg,
  });

  double fcoo;
  double meto;
  double sg;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        fcoo: json["fcoo"].toDouble(),
        meto: json["meto"].toDouble(),
        sg: json["sg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "fcoo": fcoo,
        "meto": meto,
        "sg": sg,
      };
}

class SeaLevel {
  SeaLevel({
    this.meto,
    this.sg,
  });

  double meto;
  double sg;

  factory SeaLevel.fromJson(Map<String, dynamic> json) => SeaLevel(
        meto: json["meto"].toDouble(),
        sg: json["sg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "meto": meto,
        "sg": sg,
      };
}

class SwellDirection {
  SwellDirection({
    this.dwd,
    this.icon,
    this.meteo,
    this.noaa,
    this.sg,
  });

  double dwd;
  double icon;
  double meteo;
  double noaa;
  double sg;

  factory SwellDirection.fromJson(Map<String, dynamic> json) => SwellDirection(
        dwd: json["dwd"].toDouble(),
        icon: json["icon"].toDouble(),
        meteo: json["meteo"].toDouble(),
        noaa: json["noaa"].toDouble(),
        sg: json["sg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "dwd": dwd,
        "icon": icon,
        "meteo": meteo,
        "noaa": noaa,
        "sg": sg,
      };
}

class WaterTemperature {
  WaterTemperature({
    this.meto,
    this.noaa,
    this.sg,
  });

  double meto;
  double noaa;
  double sg;

  factory WaterTemperature.fromJson(Map<String, dynamic> json) =>
      WaterTemperature(
        meto: json["meto"].toDouble(),
        noaa: json["noaa"].toDouble(),
        sg: json["sg"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "meto": meto,
        "noaa": noaa,
        "sg": sg,
      };
}
