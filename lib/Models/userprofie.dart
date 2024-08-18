class UserProfile {
  String name;

  String uid;
  String bio;
//  String profilePicture;

  UserProfile({
    required this.name,
    required this.uid,
    required this.bio,
    // required this.profilePicture,
  });
  factory UserProfile.fromMap(Map<String, dynamic> data) {
    return UserProfile(
      name: data['name'],
      uid: data['uid'],
      bio: data['bio'],
      //  profilePicture: data['profilePicture'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uid': uid,
      'bio': bio,
      //  'profilePicture': profilePicture,
    };
  }
}
