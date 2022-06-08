import '/core/app_export.dart';
import 'package:drscanner/presentation/result_page_screen/models/result_page_model.dart';

class ResultPageController extends GetxController with StateMixin<dynamic> {
  Rx<ResultPageModel> resultPageModelObj = ResultPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
