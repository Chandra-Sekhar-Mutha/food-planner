import 'dart:async';
import 'dart:developer';
import 'package:myapp/config/dbconfig.dart';
import 'package:myapp/model/employee.dart';

class MenuCategoryService {
  Future<List<Map<dynamic, dynamic>>> getMenuCategories() async {
    var dbClient = await DBConfig().getDB;
    List<Map> list = await dbClient.rawQuery('select distinct * from menu_category');

    List<String> menuCtgryList = new List();
    for (int i = 0; i < list.length; i++) {
      menuCtgryList.add(list[i]["name"]);
    }
    print(menuCtgryList.length);
    log('list length: ' + list.length.toString());

    /*return list.map((Map<dynamic, dynamic> row) {
      return row["name"] as String;
    }).toList();*/

    return list;
  }
}