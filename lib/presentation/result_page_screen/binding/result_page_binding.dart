import '../controller/result_page_controller.dart';
import 'package:get/get.dart';

class ResultPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultPageController());
  }
}
