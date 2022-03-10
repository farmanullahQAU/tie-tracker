import 'package:cloud_firestore/cloud_firestore.dart';

class InventryModel {
 late String mold;
  String? tieNumber;
 late String partSize;
 late String temprature;
 late String inspection;
late  DateTime? dateAdded;

  late String weight;
 late String status;

  DocumentReference? inventryReference;

  InventryModel.fromJson(
      Map<String, dynamic> json, DocumentReference inventryReference) {
    this.inventryReference = inventryReference;
    mold = json["mold"];
    tieNumber = json["tie_number"];
    partSize = json['part_size'];
    temprature = json['temprature'];
    inspection = json['inspection'];
    dateAdded = json["date_added"] != null
        ? DateTime.fromMicrosecondsSinceEpoch(
            json['date_added'].microsecondsSinceEpoch)
        : null;

    weight = json['weight'];
    status = json['status'];
  }

  InventryModel({
   required this.mold,
   required this.tieNumber,
   required this.partSize,
   required this.temprature,
   required this.inspection,
    this.dateAdded,
   required this.weight,
   required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'mold': mold,
      'tie_number': tieNumber,
      'part_size': partSize,
      'temprature': temprature,
      'inspection': inspection,
      'date_added': dateAdded != null
          ? Timestamp.fromDate(dateAdded!)
          : Timestamp.fromDate(DateTime.now()),
      'status': status,
      'weight': weight
    };
  }
}
