class User {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final int phone;

  User({
    required this.lastName,
    required this.email,
    required this.firstName,
    required this.phone,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'email': email,
      'lastName': lastName,
      'password': password,
      'phone': phone,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      email: json['email'],
      lastName: json['lastName'],
      phone: json['phone'],
      password: json['password'],
    );
  }
}
