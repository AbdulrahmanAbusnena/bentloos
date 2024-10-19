import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bentlos/Models/pitches.dart';

class PitchService {
  final pitchCollection = FirebaseFirestore.instance.collection('pitches');

  Future<void> addPitch(Pitches pitch) async {
    try {
      await pitchCollection.add(pitch.toMap());
    } catch (e) {
      "Error adding pitch: $e";
    }
  }

  Future<List<Pitches>> getPitchesByOwner(String ownerId) async {
    try {
      QuerySnapshot querySnapshot =
          await pitchCollection.where('ownerId', isEqualTo: ownerId).get();

      return querySnapshot.docs.map((doc) {
        return Pitches.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      "Error fetching pitches: $e";
      return [];
    }
  }
}
