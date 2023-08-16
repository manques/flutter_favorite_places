import 'package:flutter/material.dart';
import 'package:flutter_favorite_places/feaures/add_place/add_place_screen.dart';
import 'package:flutter_favorite_places/feaures/place_details/place_details.dart';
import 'package:flutter_favorite_places/shared/data/pleaces_data.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    // add place
    void addPlace(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const AddPlaceScreen(),
        ),
      );
    }

    // view place details
    void onPlaceDetails(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const PlaceDetails(),
        ),
      );
    }

    return Scaffold(
      // appBar
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              addPlace(context);
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      // body
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(places[index]),
            child: InkWell(
              onTap: () {
                onPlaceDetails(context);
              },
              child: ListTile(
                title: Text(places[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}
