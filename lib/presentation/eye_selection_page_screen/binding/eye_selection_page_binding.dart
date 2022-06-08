import '../controller/eye_selection_page_controller.dart';
import 'package:get/get.dart';

class EyeSelectionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EyeSelectionPageController());
  }
}
