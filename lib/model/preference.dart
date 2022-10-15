class Preference {
  final int id;
  final String name;
  final String desc;

  Preference({this.id, this.name, this.desc, });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Preference{id: $id, name: $name, desc: $desc}';
  }
}