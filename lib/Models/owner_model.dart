class OwnerModel {
  String oid;
  String name;
  String bio;
  String password;
  String email;
  double phoneNumber;

  OwnerModel({
    required this.oid, // Assuming 'oid' is a unique identifier
    required this.name,
    required this.bio,
    required this.password,
    required this.email,
    required this.phoneNumber,
  });
  factory OwnerModel.fromMap(Map<String, dynamic> data) {
    return OwnerModel(
      oid: data['oid'],
      email: data['email'],
      phoneNumber: data['phoneNumber'],
      name: data['name'],
      password: data['password'],
      bio: data['bio'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'oid': oid,
      'email': email,
      'name': name,
      'password': password,
      'bio': bio,
      'phoneNumber': phoneNumber,
    };
  }
}
