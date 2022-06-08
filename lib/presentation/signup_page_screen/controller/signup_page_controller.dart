import '/core/app_export.dart';
import 'package:drscanner/presentation/signup_page_screen/models/signup_page_model.dart';
import 'package:flutter/material.dart';

class SignupPageController extends GetxController with StateMixin<dynamic> {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupPageModel> signupPageModelObj = SignupPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.dispose();
    lastnameController.dispose();
    phonenumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
