import 'package:get/get_state_manager/get_state_manager.dart';

class InventryFormController extends GetxController {
  @override
  void onInit() {
    initLists();

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
}
