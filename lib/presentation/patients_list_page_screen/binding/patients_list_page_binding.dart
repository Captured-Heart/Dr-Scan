import '../controller/patients_list_page_controller.dart';
import 'package:get/get.dart';

class PatientsListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientsListPageController());
  }
}
