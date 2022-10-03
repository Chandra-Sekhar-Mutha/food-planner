class User {
  final int id;
  final String firstName;
  final String lastName;
  final String sex;
  final String email;
  final DateTime dob;
  final int preference;

  User({this.id, this.firstName, this.lastName, this.sex, this.email, this.dob, this.preference});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  // Implement toString to make it easier to see information about
  // each user when using the print statement.
  @override
  String toString() {
    return 'User{id: $id, firstName: $firstName, lastName: $lastName}';
  }
}