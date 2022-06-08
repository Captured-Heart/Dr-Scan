import '/core/app_export.dart';
import 'package:drscanner/presentation/analyzing_page_screen/models/analyzing_page_model.dart';

class AnalyzingPageController extends GetxController with StateMixin<dynamic> {
  Rx<AnalyzingPageModel> analyzingPageModelObj = AnalyzingPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
