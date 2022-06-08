import '/core/app_export.dart';
import 'package:drscanner/presentation/patient_information_page_screen/models/patient_information_page_model.dart';
import 'package:flutter/material.dart';

class PatientInformationPageController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  TextEditingController sexController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNoController = TextEditingController();

  Rx<PatientInformationPageModel> patientInformationPageModelObj =
      PatientInformationPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    ageController.dispose();
    sexController.dispose();
    emailController.dispose();
    phoneNoController.dispose();
  }
}
