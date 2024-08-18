class UserModel {
  String name;
  String email;
  String password;
  String uid;
  String bio;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.uid,
    required this.bio,
  });
  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      email: data['email'],
      name: data['name'],
      password: data['password'],
      bio: data['bio'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'password': password,
      'bio': bio,
    };
  }
}
