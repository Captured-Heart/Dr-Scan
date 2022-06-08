import '../controller/report_page_controller.dart';
import 'package:get/get.dart';

class ReportPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportPageController());
  }
}
