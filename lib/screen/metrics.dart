import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Metrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          if (index % 4 == 0) {
            return Center(
              child: Card(
                child: Icon(
                  Icons.insert_chart,
                  size: 150.0,
                ),
                color: Colors.grey,
                borderOnForeground: true,
                elevation: 30,
              ),
            );
          } else if (index % 3 == 0) {
            return Center(
              child: Card(
                child: Icon(
                  Icons.insert_chart,
                  size: 150.0,
                ),
                color: Colors.grey,
                borderOnForeground: true,
                elevation: 30,
              ),
            );
          } else if (index % 2 == 0) {
            return Center(
              child: Card(
                child: ListTile(
                  title: Text('Earliest Meal'),
                  subtitle: Text(DateTime.now().toString()),
                ),
                color: Colors.grey,
                borderOnForeground: true,
                elevation: 30,
              ),
            );
          } else {
            return Center(
              child: Card(
                child: Text('Chicken Biryani'),
                color: Colors.grey,
                borderOnForeground: true,
                elevation: 30,
              ),
            );
          }
        }),
      ),
    );
  }
}
