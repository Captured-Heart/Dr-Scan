import '/core/app_export.dart';
import 'package:drscanner/presentation/report_page_screen/models/report_page_model.dart';

class ReportPageController extends GetxController with StateMixin<dynamic> {
  Rx<ReportPageModel> reportPageModelObj = ReportPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
