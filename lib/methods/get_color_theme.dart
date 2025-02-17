import 'package:flutter/material.dart';

MaterialColor getColorTheme(String? condition) {
  // Group similar conditions and assign colors
  switch (condition) {
    // Sunny/Clear
    case "Sunny":
    case "Clear":
      return Colors.orange;

    // Partly Cloudy
    case "Partly cloudy":
      return Colors.lightBlue;

    // Cloudy/Overcast
    case "Cloudy":
    case "Overcast":
      return Colors.blueGrey;

    // Mist/Fog
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.grey;

    // Rainy Conditions
    case "Patchy rain possible":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
      return Colors.blue;

    // Snowy Conditions
    case "Patchy snow possible":
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return Colors.lightBlue;

    // Sleet/Freezing Rain
    case "Patchy sleet possible":
    case "Patchy freezing drizzle possible":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
      return Colors.cyan;

    // Thunderstorms
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple;

    // Extreme Conditions
    case "Blowing snow":
    case "Blizzard":
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.indigo;

    // Default color for unknown conditions
    default:
      return Colors.grey;
  }
}
