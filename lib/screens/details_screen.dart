import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, String> recipe;
  DetailsScreen({required this.recipe});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe['name']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.recipe['details']!, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Text(isFavorite ? 'Unmark Favorite' : 'Mark as Favorite'),
            ),
          ],
        ),
      ),
    );
  }
}
