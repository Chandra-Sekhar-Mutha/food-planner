class MenuItem {
  final int id;
  final int menuCategory;
  final String name;
  final String desc;

  MenuItem({this.id, this.menuCategory, this.name, this.desc, });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'menuCategory': menuCategory,
      'desc': desc,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'MenuItem{id: $id, menuCategory: $menuCategory, desc: $desc}';
  }
}