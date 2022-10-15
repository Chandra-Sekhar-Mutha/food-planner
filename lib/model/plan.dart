class Plan {
  final int id;
  final int user;
  final int menuItem;
  final DateTime dateTime;

  Plan({this.id, this.user, this.menuItem, this.dateTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user,
      'menuItem': menuItem,
      'dateTime': dateTime,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Plan{id: $id, user: $user, menuItem: $menuItem, dateTime: $dateTime}';
  }
}