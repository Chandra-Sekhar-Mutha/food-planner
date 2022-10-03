class Actual {
  final int id;
  final int plan;
  final int menuItem;
  final DateTime dateTime;

  Actual({this.id, this.plan, this.menuItem, this.dateTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'plan': plan,
      'menuItem': menuItem,
      'dateTime': dateTime,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Actual{id: $id, plan: $plan, menuItem: $menuItem, dateTime: $dateTime}';
  }
}