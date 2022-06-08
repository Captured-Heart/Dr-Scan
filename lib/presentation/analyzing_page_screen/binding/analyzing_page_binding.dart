import '../controller/analyzing_page_controller.dart';
import 'package:get/get.dart';

class AnalyzingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnalyzingPageController());
  }
}
