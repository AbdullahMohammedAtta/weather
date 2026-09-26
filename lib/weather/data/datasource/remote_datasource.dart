import 'dart:convert';

import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{

  Future<WeatherModel?> getWeatherByCuntryName(String countryName);

}


class RemoteDatasource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCuntryName(countryName)async {
      final dio = Dio();
      var response = await dio.get('${AppConstants.baseurl}/weather?q=$countryName&appid=${AppConstants.appId}');
      print(response);
      return WeatherModel.fromJson(jsonDecode(response.data));
      
  }



}