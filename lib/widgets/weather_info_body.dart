import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

import '../methods/get_color_theme.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    MaterialColor themeColor = getColorTheme(weatherModel.weatherCondition);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            themeColor[600]!,
            themeColor[300]!,
            themeColor[50]!,
          ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              "updated at ${weatherModel.date.hour}:${weatherModel.date.minute}",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModel.image}",
                  width: 80,
                  height: 80,
                ),
                Text(
                  "${weatherModel.temp.round()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel.minTemp.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
