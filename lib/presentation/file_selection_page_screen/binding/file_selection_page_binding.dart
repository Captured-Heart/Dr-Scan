import '../controller/file_selection_page_controller.dart';
import 'package:get/get.dart';

class FileSelectionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FileSelectionPageController());
  }
}
