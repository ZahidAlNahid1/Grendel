import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:migraine_help_v1/Models/migraine.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  DatabaseService.withoutUID() : uid = "";

// collection reference

  final CollectionReference migraineCollection =
      FirebaseFirestore.instance.collection('migraine');

  Future updateUserData(String sugars, String name, int strength) async {
    return await migraineCollection.doc(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

// migraine list from snapshot

  List<Migraine> _migraineListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Migraine(
          name: doc['name'] ?? '',
          strength: doc['strength'] ?? 0,
          sugars: doc['sugars'] ?? '0');
    }).toList();
  }

  Stream<List<Migraine>> get migraine {
    return migraineCollection.snapshots().map(_migraineListFromSnapshot);
  }
}
