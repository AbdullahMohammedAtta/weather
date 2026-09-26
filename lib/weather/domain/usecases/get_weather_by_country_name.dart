import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String countryName ) async{
    return await repository.getWeatherByCityName(countryName);
  }
}