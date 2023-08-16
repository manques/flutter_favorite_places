import 'package:flutter/material.dart';
import 'package:flutter_favorite_places/core/theme/theme.dart';
import 'package:flutter_favorite_places/feaures/places/places_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great places',
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}
