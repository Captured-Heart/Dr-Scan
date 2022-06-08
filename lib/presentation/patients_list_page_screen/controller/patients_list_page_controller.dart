import '/core/app_export.dart';
import 'package:drscanner/presentation/patients_list_page_screen/models/patients_list_page_model.dart';

class PatientsListPageController extends GetxController
    with StateMixin<dynamic> {
  Rx<PatientsListPageModel> patientsListPageModelObj =
      PatientsListPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
