import 'package:bentlos/Components/text_control.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registrationpage.dart';
import 'package:bentlos/Services/authentication.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final userCollection = FirebaseFirestore.instance.collection("users");
  Future<void> editField(String field) async {
    String newvalue = '';
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: Text("Edit $field",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        content: TextField(
          autofocus: true,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Enter New $field",
            hintStyle: const TextStyle(color: Colors.white),
          ),
          onChanged: (value) => newvalue = value,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(newvalue),
            child: const Text('Save'),
          ),
        ],
      ),
    );
    if (newvalue.trim().isNotEmpty) {
      await userCollection.doc(currentUser.uid).update({field: newvalue});
    }
  }

  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6CB),
      appBar: AppBar(
        title: Text(
          'profile',
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xffECE6CB),
        centerTitle: true,
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection("users")
            .doc(currentUser.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final userData = snapshot.data!.data() as Map<String, dynamic>;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        child:
                            Image.asset('assets/tokyo.jpeg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextControl(
                    name: userData['name'],
                    sectionName: 'User Name',
                    onTap: () => editField('name'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextControl(
                    name: userData['email'],
                    sectionName: 'Email',
                    onTap: () => editField('email'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextControl(
                    name: userData['bio'],
                    sectionName: 'Bio',
                    onTap: () => editField('bio'),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: buttonTheme1,
                      onPressed: () async {
                        await AuthServices().signOut();
                        Navigator.pushReplacement(
                            // ignore: use_build_context_synchronously
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IntroPage(),
                            ));
                      },
                      child: Text('Log out',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
