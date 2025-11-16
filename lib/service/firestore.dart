import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:internapp/models/intern_model.dart';

class FireStoreService {
  final CollectionReference collectionReference = FirebaseFirestore.instance.collection("data");

  Stream<List<InternModel>> getIntern() {
    return collectionReference.snapshots().map((snapshot) {
      return snapshot.docs.map((element){
        return InternModel.fromMap(element.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}