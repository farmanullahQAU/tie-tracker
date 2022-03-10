import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tie_tracker/models/inventry_model.dart';

class FirebaseServices{


  static final inventoryQuery = FirebaseFirestore.instance.collection('entries')

  .withConverter<InventryModel>(
     fromFirestore: (snapshot, _) => InventryModel.fromJson(snapshot.data()!,snapshot.reference),
     toFirestore: (inventryModel, _) => inventryModel.toMap(),
   );


}