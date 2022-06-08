import '/core/app_export.dart';
import 'package:drscanner/presentation/login_page_screen/models/login_page_model.dart';
import 'package:flutter/material.dart';

class LoginPageController extends GetxController with StateMixin<dynamic> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
