import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tie_tracker/models/inventry_model.dart';

class InventryFormController extends GetxController {
  late final GlobalKey<FormState> _formKey;
  

late final TextEditingController moldController;
late final TextEditingController tieController;

late final TextEditingController weightController;

late final TextEditingController tempratureController;

  String? _statue;

  String? _partSize;
  String? _inspection;

String get status=>_statue!;
String get inspection=>_inspection!;
String get partSize=>_partSize!;
GlobalKey<FormState> get formKey=>_formKey;


 set status(String status)=>_statue=status;
 set inspection(String inspection)=>_inspection=inspection;
 set partSize(String partSize)=> _partSize=partSize;


  @override
  void onInit() {
    initLists();
    //initiliaze variable when controller calls
    initEntryFormTextControllers();

    super.onInit();
  }

  late final List<String> _inspectionList;
  List<String> get inspectionList => _inspectionList;
  late final List<String> _partSizesList;
  List<String> get partSizesList => _partSizesList;
  late final List<String> _statusValuesList;
  List<String> get statusValuesList => _statusValuesList;

  initLists() {
    _statusValuesList = [
      "PASS",
      "FAIL",
      "HOLD",
    ];

    _inspectionList = ["No Defects", "voids", "Cracks"];
    _partSizesList = ["8 RT", "9 RT", "10 RT", "10X10"];
  }

  void initEntryFormTextControllers() {
    _formKey=GlobalKey<FormState>();


   moldController=TextEditingController();
  tieController=TextEditingController(text:DateTime.now().millisecondsSinceEpoch.toString());

   weightController=TextEditingController();;

   tempratureController=TextEditingController();;

  //  _statue="";

  //  _partSize="";
  //  _inspection="";


  }
Future<void> addEntryToDatabase() async {




    final _inventoryModel=new InventryModel(mold: moldController.text, 
    status: status,
    weight: weightController.text,
    
    tieNumber: tieController.text, partSize: partSize, temprature: tempratureController.text, inspection: inspection);


    await FirebaseFirestore.instance.collection("entries").add(_inventoryModel.toMap());
    clearFields();
  }

  void clearFields() {

    moldController.clear();
    weightController.clear();
    tempratureController.clear();
    tieController.clear();

  }
}
