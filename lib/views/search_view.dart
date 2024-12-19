import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Search a city",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: TextField(
            onSubmitted: (value) {},
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 28),
              label: Text(
                "Search",
                style: TextStyle(fontSize: 18),
              ),
              suffixIcon: Icon(Icons.search),
              hintText: "Enter City Name",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
