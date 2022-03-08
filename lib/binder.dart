
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'screens/entry_form/entry_form_controller.dart';
import 'screens/home/home_controller.dart';



class Binder extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut(() => InventryFormController());

    // Get.lazyPut<LibraryViewController>(() => LibraryViewController());
    // Get.lazyPut(() => VideosPlayerController());
    // Get.lazyPut(() => CameraRollViewController());

    // Get.lazyPut(() => ImageFilterViewController());


  }
}
