import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{

  final RemoteDatasource remoteDatasource;

  WeatherRepository(this.remoteDatasource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
   return (await remoteDatasource.getWeatherByCuntryName(countryName))!;
  }


}