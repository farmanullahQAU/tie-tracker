import 'package:cloud_firestore/cloud_firestore.dart';

class InventryModel {
  String? mold;
  String? tieNumber;
  String? partSize;
  String? temprature;
  String? inspection;
  DateTime? dateAdded;

  double? weight;
  String? status;

  DocumentReference? inventryReference;

  InventryModel.fromJson(
      Map<String, dynamic> json, DocumentReference inventryReference) {
    this.inventryReference = inventryReference;
    mold = json["mold"] ?? null;
    tieNumber = json["tie_number"] ?? null;
    partSize = json['part_size'] ?? null;
    temprature = json['temprature'] ?? null;
    inspection = json['inspection'] ?? null;
    dateAdded = json["date_added"] != null
        ? DateTime.fromMicrosecondsSinceEpoch(
            json['date_added'].microsecondsSinceEpoch)
        : null;

    weight = json['weight'] ?? null;
    status = json['status'] ?? null;
  }

  InventryModel({
    this.mold,
    this.tieNumber,
    this.partSize,
    this.temprature,
    this.inspection,
    this.dateAdded,
    this.weight,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'mold': this.mold,
      'tie_number': this.tieNumber,
      'part_size': this.partSize,
      'temprature': temprature,
      'inspection': this.inspection ?? null,
      'date_added': dateAdded != null
          ? Timestamp.fromDate(dateAdded!)
          : Timestamp.fromDate(DateTime.now()),
      'status': status ?? null,
      'weight': weight ?? null
    };
  }
}
