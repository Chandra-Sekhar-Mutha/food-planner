import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/service/menucategoryservice.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Planner extends StatefulWidget {
  Planner({Key key}) : super(key: key);

  @override
  _PlannerState createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  var _dropdownValue;
  var _categories = List<DropdownMenuItem<String>>();
  DateTime selectedDate = DateTime.now();
  DateTime _selectedDate = DateTime.now();
  DateTime _selectedTime = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  initState() {
    super.initState();
    // when loading your widget for the first time, loads animals from sqflite
    _loadMenu();
  }

  _loadMenu() async {
    var _menuCategoryService = MenuCategoryService();
    // gets data from sqflite
    var lists = await _menuCategoryService.getMenuCategories();
    lists.forEach((category) {
      setState(() {
        // converts sqflite row data to List<String>, updating state
        _categories.add(DropdownMenuItem(
          child: Text(category['name']),
          value: category['name'],
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                margin: EdgeInsets.all(30.0),
                child: Center(
                    child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      "Meal Type  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    DropdownButton<String>(
                      value: _dropdownValue,
                      items: _categories,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 20,
                      elevation: 16,
                      onChanged: (String value) {
                        print('_dropdownValue: ' + _dropdownValue.toString());
                        print('value: ' + value);
                        setState(() {
                          _dropdownValue = value;
                        });
                      },
                    )
                  ]),
                  Row(children: <Widget>[
                    Text(
                      "Menu Category  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    DropdownButton<String>(
                      value: _dropdownValue,
                      items: _categories,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 20,
                      elevation: 16,
                      onChanged: (String value) {
                        print('_dropdownValue: ' + _dropdownValue.toString());
                        print('value: ' + value);
                        setState(() {
                          _dropdownValue = value;
                        });
                      },
                    )
                  ]),
                  Row(children: <Widget>[
                    Text(
                      "Menu Item  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    DropdownButton<String>(
                      value: _dropdownValue,
                      items: _categories,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 20,
                      elevation: 16,
                      onChanged: (String value) {
                        print('_dropdownValue: ' + _dropdownValue.toString());
                        print('value: ' + value);
                        setState(() {
                          _dropdownValue = value;
                        });
                      },
                    )
                  ]),
                  /*Row(children: <Widget>[
                        Text(
                          "Date  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        Text("${selectedDate.toLocal()}".split(' ')[0]),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextButton.icon(
                          onPressed: () => _selectDate(context),
                          label: Text(''),
                          icon: Icon(Icons.calendar_today),
                        )
                      ]),*/
                  Row(children: <Widget>[
                    Text(
                      "Date  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Text("${_selectedDate.toLocal()}".split(' ')[0]),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true, onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                          setState(() {
                            _selectedDate = date;
                          });
                        }, onConfirm: (date) {
                          print('confirm $date');
                          setState(() {
                            _selectedDate = date;
                          });
                        }, currentTime: DateTime.now());
                      },
                      label: Text(''),
                      icon: Icon(Icons.calendar_today),
                    )
                  ]),
                  Row(children: <Widget>[
                    Text(
                      "Time  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Text("${_selectedTime.toLocal()}".split(' ')[1]),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        DatePicker.showTimePicker(
                          context,
                          showTitleActions: true,
                          onChanged: (date) {
                            print('change $date in time zone ' +
                                date.timeZoneOffset.inHours.toString());
                            setState(() {
                              _selectedTime = date;
                            });
                          },
                          onConfirm: (date) {
                            print('confirm $date');
                            setState(() {
                              _selectedTime = date;
                            });
                          },
                          currentTime: DateTime.now(),
                        );
                      },
                      label: Text(''),
                      icon: Icon(Icons.access_time),
                    )
                  ]),
                  Row(children: <Widget>[
                    Text(
                      "Time  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Text("${_selectedTime.toLocal()}".split(' ')[1]),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Future<TimeOfDay> selectedTime = showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                      },
                      label: Text(''),
                      icon: Icon(Icons.access_time),
                    )
                  ])
                ])),
                padding: EdgeInsets.all(10.0))));
  }
}
