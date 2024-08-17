import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Icon(Icons.person),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(currentUser.email!),
        ],
      ),
    );
  }
}
