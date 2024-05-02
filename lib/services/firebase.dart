import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference items =
      FirebaseFirestore.instance.collection('items');

  Future addItem(String item) async {
    return await items.add({
      'item': item,
    });
  }
}
