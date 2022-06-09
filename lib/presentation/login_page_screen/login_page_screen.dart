import 'package:drscanner/core/constants/auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'controller/login_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  bool isLoading = false;
  AuthMethods authMethods = AuthMethods();
  LoginPageController controller = LoginPageController();
  final GlobalKey<FormState> _formKeyLogin = GlobalKey();
  Dialogs dialog = Dialogs();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
              key: _formKeyLogin,
              child: Container(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: getVerticalSize(49.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          268.00),
                                                      width: size.width,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    height: getVerticalSize(
                                                                        137.00),
                                                                    width: size
                                                                        .width,
                                                                    margin: EdgeInsets.only(
                                                                        bottom: getVerticalSize(
                                                                            10.00)),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                68.50)),
                                                                        gradient: LinearGradient(
                                                                            begin:
                                                                                Alignment(0.5, -3.0616171314629196e-17),
                                                                            end: Alignment(0.5, 0.9999999999999999),
                                                                            colors: [
                                                                              ColorConstant.blue5000,
                                                                              ColorConstant.blue50
                                                                            ])))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            85.00),
                                                                        top: getVerticalSize(
                                                                            10.00),
                                                                        right: getHorizontalSize(
                                                                            85.00)),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(13.00), right: getHorizontalSize(13.00)), child: Image.asset(ImageConstant.imgRectangle8, height: getSize(152.00), width: getSize(152.00), fit: BoxFit.fill))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(13.00), top: getVerticalSize(17.00), right: getHorizontalSize(12.00)), child: Text("lbl_welcome_to".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylemontserratsemibold18.copyWith(fontSize: getFontSize(18))))),
                                                                          Text(
                                                                              "lbl_dr_scan".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.textstylemontserratsemibold32.copyWith(fontSize: getFontSize(32)))
                                                                        ])))
                                                          ]))),
                                              // Padding(
                                              //   padding: EdgeInsets.only(
                                              //     top: getVerticalSize(28.00),
                                              //   ),
                                              //   child: Center(
                                              //     child:
                                              //         CircularProgressIndicator(
                                              //       strokeWidth: 8,
                                              //     ),
                                              //   ),
                                              // ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          40.00),
                                                      top: getVerticalSize(
                                                          58.00),
                                                      right: getHorizontalSize(
                                                          40.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          68.00),
                                                      width: getHorizontalSize(
                                                          280.00),

                                                      //! EMAIL CONTROLLER
                                                      child: TextFormField(
                                                          controller: controller
                                                              .emailController,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .onUserInteraction,
                                                          validator:
                                                              MultiValidator([
                                                            RequiredValidator(
                                                                errorText:
                                                                    'please enter an Email'),
                                                            EmailValidator(
                                                                errorText:
                                                                    'Please provide a workimg email'),
                                                          ]),
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  "lbl_email"
                                                                      .tr,
                                                              hintStyle: AppStyle
                                                                  .textstylemontserratregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              16.0),
                                                                      color: ColorConstant.black900),
                                                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                                              filled: true,
                                                              fillColor: ColorConstant.blue50,
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                                          style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16.0), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)))),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        40.00),
                                                    top: getVerticalSize(10.00),
                                                    right: getHorizontalSize(
                                                        40.00)),
                                                child: Container(
                                                  height:
                                                      getVerticalSize(68.00),
                                                  width:
                                                      getHorizontalSize(280.00),

                                                  //! PASSWORD CONTROLLER
                                                  child: TextFormField(
                                                    controller: controller
                                                        .passwordController,
                                                    obscureText: true,
                                                    validator: MultiValidator([
                                                      RequiredValidator(
                                                          errorText:
                                                              'please enter a password'),
                                                      PatternValidator(
                                                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*[0-9])',
                                                          errorText:
                                                              'at least 1 UpperCase, 1 lowerCase, 1 digit'),
                                                      MinLengthValidator(8,
                                                          errorText:
                                                              'Must be more than 8'),
                                                    ]),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "lbl_password".tr,
                                                        hintStyle: AppStyle
                                                            .textstylemontserratregular16
                                                            .copyWith(
                                                                fontSize: getFontSize(
                                                                    16.0),
                                                                color: ColorConstant
                                                                    .black900),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        5.00)),
                                                            borderSide: BorderSide(
                                                                color: ColorConstant
                                                                    .blueA70033,
                                                                width: 1)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(5.00)),
                                                            borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                                        filled: true,
                                                        fillColor: ColorConstant.blue50,
                                                        isDense: true,
                                                        contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(16.0),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),

                                              //! TEXTFIELD ENDS HERE
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        40.00),
                                                    top: getVerticalSize(42.00),
                                                    right: getHorizontalSize(
                                                        40.00)),

                                                //! LOGIN
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    final form = _formKeyLogin
                                                        .currentState;
                                                    try {
                                                      if (form!.validate()) {
                                                        setState(() {
                                                          isLoading = true;
                                                        });
                                                        await authMethods
                                                            .signInWithEmailAndPassword(
                                                          controller
                                                              .emailController
                                                              .text
                                                              .trim(),
                                                          controller
                                                              .passwordController
                                                              .text
                                                              .trim(),
                                                          context,
                                                        );

                                                        setState(() {
                                                          isLoading = false;
                                                        });
                                                      }
                                                    } catch (e) {
                                                      dialog.warningDialog(
                                                          context: context,
                                                          contentText: e
                                                              .toString()
                                                              .toString(),
                                                          titleText: 'ERROR',
                                                          onPositiveClick: () {}
                                                          // pageName: AppRoutes.loginPageScreen,
                                                          );
                                                      setState(() {
                                                        isLoading = false;
                                                      });
                                                    }
                                                    // Get.toNamed(AppRoutes
                                                    //     .patientInformationPageScreen);
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(48.00),
                                                    width: getHorizontalSize(
                                                        280.00),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    5.00))),
                                                    child: !isLoading
                                                        ? Text(
                                                            "lbl_sign_in2".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstylemontserratextrabold20
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            20),
                                                                    height:
                                                                        1.40),
                                                          )
                                                        : Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                            color: Colors.white,
                                                          )),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          40.00),
                                                      top: getVerticalSize(
                                                          23.00),
                                                      right: getHorizontalSize(
                                                          40.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        3.00)),
                                                            child: Text(
                                                                "msg_don_t_have_an_a"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textstylemontserratregular143
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(14)))),

                                                        //! SIGN UP, DONT HAVE AN ACCOUNT
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtSignup();
                                                            },
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        12.00)),
                                                                child: Text(
                                                                    "lbl_sign_up"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textstylemontserratregular141
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(14),
                                                                            height: 1.57))))
                                                      ]))
                                            ])))
                              ])))),
            )));
  }

  onTapBtnSignin2() {
    Get.toNamed(AppRoutes.patientInformationPageScreen);
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signupPageScreen);
  }
}
