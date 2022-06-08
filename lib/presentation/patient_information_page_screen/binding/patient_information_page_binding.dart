import '../controller/patient_information_page_controller.dart';
import 'package:get/get.dart';

class PatientInformationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientInformationPageController());
  }
}
