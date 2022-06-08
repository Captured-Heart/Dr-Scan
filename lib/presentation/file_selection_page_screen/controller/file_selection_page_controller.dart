import '/core/app_export.dart';
import 'package:drscanner/presentation/file_selection_page_screen/models/file_selection_page_model.dart';

class FileSelectionPageController extends GetxController
    with StateMixin<dynamic> {
  Rx<FileSelectionPageModel> fileSelectionPageModelObj =
      FileSelectionPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
