import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:tie_tracker/firestore_services/firestore_services.dart';
import 'package:tie_tracker/models/inventry_model.dart';

class EntryListView extends StatelessWidget {
  const EntryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirestoreListView<InventryModel>(
        shrinkWrap: true,
      query: FirebaseServices.inventoryQuery,
      itemBuilder: (context, snapshot) {
      // Data is now typed!
      InventryModel _inventryModel = snapshot.data();
    
      return addCard(_inventryModel);
      },
    ),
    );
  }

  Widget addCard(InventryModel inventryModel) {

    return Card(child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
             
                   ListTile(title:Text("Weight"),
              
              subtitle: Text(inventryModel.weight),
              
               ),
            ],
          ),
        ),
         Expanded(
          child: Column(
            children: [
             
                   ListTile(title:Text("Weight"),
              
              subtitle: Text(inventryModel.weight),
              
               ),
            ],
          ),
        ),
         Expanded(
          child: Column(
            children: [
             
                   ListTile(title:Text("Weight"),
              
              subtitle: Text(inventryModel.weight),
              
               ),
            ],
          ),
        ),
           Expanded(
          child: Column(
            children: [
             
                   ListTile(title:Text("Weight"),
              
              subtitle: Text(inventryModel.weight),
              
               ),
            ],
          ),
        ),
           Expanded(
          child: Column(
            children: [
             
                   ListTile(title:Text("Weight"),
              
              subtitle: Text(inventryModel.weight),
              
               ),
            ],
          ),
        ),
      ],
    ),);
  }
}