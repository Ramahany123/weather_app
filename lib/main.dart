import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/methods/get_color_theme.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: const WeatherAppTheme(),
    );
  }
}

class WeatherAppTheme extends StatelessWidget {
  const WeatherAppTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        String? weatherCondition = BlocProvider.of<GetWeatherCubit>(context)
            .weatherModel
            ?.weatherCondition;
        // To Do: write theme in a cleaner way
        ThemeData theme = ThemeData(
          primarySwatch: getColorTheme(weatherCondition),
          appBarTheme: AppBarTheme(
            color: getColorTheme(weatherCondition),
            titleTextStyle: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
        return MaterialApp(
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        );
      },
    );
  }
}
