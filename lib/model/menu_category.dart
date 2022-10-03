class MenuCategory {
  final int id;
  final int meal;
  final int preference;
  final String name;
  final String desc;

  MenuCategory({this.id, this.meal, this.preference, this.name, this.desc, });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'meal': meal,
      'desc': desc,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Meal{id: $id, meal: $meal, desc: $desc}';
  }
}