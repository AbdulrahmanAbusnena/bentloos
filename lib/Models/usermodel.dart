class UserModel {
  String name;
  String email;
  String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.uid,
  });
  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      email: data['email'],
      name: data['name'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
    };
  }
}
