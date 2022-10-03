import 'dart:async';
import 'package:myapp/config/dbconfig.dart';
import 'package:myapp/model/employee.dart';

class EmployeeService {
// Retrieving employees from Employee Tables
  Future<List<Employee>> getEmployees() async {
    var dbClient = await DBConfig().getDB;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Employee');
    List<Employee> employees = new List();
    for (int i = 0; i < list.length; i++) {
      employees.add(new Employee(
          list[i]["firstname"], list[i]["lastname"], list[i]["mobileno"],
          list[i]["emailid"]));
    }
    print(employees.length);
    return employees;
  }

  void saveEmployee(Employee employee) async {
    var dbClient = await DBConfig().getDB;
    await dbClient.transaction((txn) async {
      return await txn.rawInsert(
          'INSERT INTO Employee(firstname, lastname, mobileno, emailid ) VALUES(' +
              '\'' +
              employee.firstName +
              '\'' +
              ',' +
              '\'' +
              employee.lastName +
              '\'' +
              ',' +
              '\'' +
              employee.mobileNo +
              '\'' +
              ',' +
              '\'' +
              employee.emailId +
              '\'' +
              ')');
    });
  }
}