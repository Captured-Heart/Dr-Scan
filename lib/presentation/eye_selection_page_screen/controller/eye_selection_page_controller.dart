import '/core/app_export.dart';
import 'package:drscanner/presentation/eye_selection_page_screen/models/eye_selection_page_model.dart';

class EyeSelectionPageController extends GetxController
    with StateMixin<dynamic> {
  Rx<EyeSelectionPageModel> eyeSelectionPageModelObj =
      EyeSelectionPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
