import 'package:weather/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {

  WeatherModel(
      super.id,
      super.pressure,
      super.cityName,
      super.main,
      super.description,
      );

  factory WeatherModel.fromJson(Map<String,dynamic> json)
  {
    return WeatherModel(
      json["id"],
      json["cityName"],
      json["weather"][0]["main"],
      json["weather"][0]["description"],
      json["weather"]["pressure"],
    );
  }

}