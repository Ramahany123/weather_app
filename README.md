# 🌤️ Flutter Weather App

A clean and minimal Flutter weather application that displays real-time weather data based on user input. This app demonstrates effective use of state management with `Cubit`, modular architecture, and a responsive UI tailored for an enjoyable user experience.

## 🚀 Features

- 🔍 **City Search** – Search weather by city name.
- 🌡️ **Current Weather Display** – Shows temperature, weather conditions, and more.
- 🎨 **Dynamic Theming** – Changes UI theme based on weather conditions.
- ⚙️ **Cubit State Management** – Clean separation of business logic using `Cubit`.
- 🔄 **Responsive UI** – Adapts to different screen sizes.

## 🧱 Project Structure
```plaintext
lib/
├── cubits/
│   └── get_weather_cubit/
│       ├── get_weather_cubit.dart
│       └── get_weather_states.dart
├── models/
│   └── weather_model.dart
├── services/
│   └── weather_services.dart
├── methods/
│   └── get_color_theme.dart
├── views/
│   ├── home_view.dart
│   └── search_view.dart
├── widgets/
│   ├── no_weather_body.dart
│   └── weather_info_body.dart
```
