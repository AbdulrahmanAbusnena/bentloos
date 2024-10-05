import 'package:cloud_firestore/cloud_firestore.dart';

class PitchService {
  final pitchCollection = FirebaseFirestore.instance.collection('pitches');
}
