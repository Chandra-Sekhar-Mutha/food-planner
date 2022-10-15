class Meal {
  final int id;
  final String type;
  final String desc;

  Meal({this.id, this.type, this.desc});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'desc': desc,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Meal{id: $id, type: $type, desc: $desc}';
  }
}