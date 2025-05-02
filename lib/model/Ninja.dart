
class Ninja {
  String name;
  int level;
  String email;
  String village = "";
  String ninjaStyle = "";

  Ninja({
    required this.name,
    required this.level,
    required this.email,
    this.village = "",
    this.ninjaStyle = ""
  });

  // Method to display person's details
  void displayInfo() {
    print('Name: $name, Level: $level, Email: $email');
  }

  // Factory constructor to create Person from a map
  factory Ninja.fromMap(Map<String, dynamic> map) {
    return Ninja(name: map['name'], level: map['level'], email: map['email']);
  }

  // Method to convert Person object to a map
  Map<String, dynamic> toMap() {
    return {'name': name, 'level': level, 'email': email};
  }
}
