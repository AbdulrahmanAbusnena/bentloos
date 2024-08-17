class UserProfile {
  String uid;
  String bio;
  String profilePicture;

  UserProfile({
    required this.uid,
    required this.bio,
    required this.profilePicture,
  });
  factory UserProfile.fromMap(Map<String, dynamic> data) {
    return UserProfile(
      uid: data['uid'],
      bio: data['bio'],
      profilePicture: data['profilePicture'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'bio': bio,
      'profilePicture': profilePicture,
    };
  }
}
