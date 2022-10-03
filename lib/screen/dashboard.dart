import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new StaggeredGridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          _getItems(),
          _getItems(),
          _getItems(),
          _getItems(),
          _getItems(),
          _getItems()
        ],
        staggeredTiles: _tiles,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
    );
  }

  List<StaggeredTile> _tiles = const <StaggeredTile>[
    const StaggeredTile.extent(3, 150.0),
    const StaggeredTile.extent(1, 150.0),
    const StaggeredTile.extent(2, 150.0),
    const StaggeredTile.extent(3, 150.0),
    const StaggeredTile.extent(2, 150.0),
    const StaggeredTile.extent(1, 150.0),
  ];

  Material _getItems() {
    return Material(
      color: Colors.grey,
      borderOnForeground: true,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Title', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              Card(color: Colors.blueGrey,child: Icon(
                Icons.ac_unit,
                size: 60,
              ))
            ]),
      ),
    );
  }
}
