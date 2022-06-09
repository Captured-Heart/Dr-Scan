import 'package:drscanner/core/constants/auth_methods.dart';
import 'package:drscanner/core/constants/firestore_database.dart';
import 'package:drscanner/core/widgets/sign_up_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_field_validator/form_field_validator.dart'
    hide FormFieldValidator;

import 'controller/signup_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPageScreen extends StatefulWidget {
  @override
  State<SignupPageScreen> createState() => _SignupPageScreenState();
}

class _SignupPageScreenState extends State<SignupPageScreen> {
  final AuthMethods authMethods = AuthMethods();

  final DataBaseService dataBaseService = DataBaseService();

  final Dialogs dialog = Dialogs();
   final GlobalKey<FormState> _formKey = GlobalKey();

  bool loading = false;
  SignupPageController controller = SignupPageController();
  // RxBool loading2 = false.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(color: ColorConstant.whiteA700),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: getVerticalSize(39.00),
                            bottom: getVerticalSize(46.00)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: size.width,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(20.00),
                                      right: getHorizontalSize(65.00)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapImgOutlineInterfa();
                                          },
                                          child: Container(
                                              height: getVerticalSize(39.00),
                                              width: getHorizontalSize(41.00),
                                              child: SvgPicture.asset(
                                                  ImageConstant
                                                      .imgOutlineinterfa,
                                                  fit: BoxFit.fill))),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: getHorizontalSize(4.00),
                                            top: getVerticalSize(8.00),
                                            bottom: getVerticalSize(9.00)),
                                        child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_create_a_new".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(20),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.10),
                                                ),
                                                TextSpan(
                                                    text: "lbl_account".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(20),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 1.10))
                                              ],
                                            ),
                                            textAlign: TextAlign.center),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //! TEXTFIELD STARTS HERE
                            SizedBox(
                              height: getVerticalSize(25),
                            ),
                            SignUpTextField(
                              controller: controller.firstnameController,
                              hintText: 'lbl_first_name',
                              obscureText: false,
                              textInputType: TextInputType.name,
                              validator: RequiredValidator(
                                  errorText: 'provide a first name'),
                            ),
                            SignUpTextField(
                              controller: controller.lastnameController,
                              hintText: 'lbl_last_name',
                              obscureText: false,
                              textInputType: TextInputType.name,
                              validator: RequiredValidator(
                                  errorText: 'provide a last name'),
                            ),
                            SignUpTextField(
                              controller: controller.phonenumberController,
                              hintText: 'lbl_phone_number',
                              obscureText: false,
                              textInputType: TextInputType.phone,
                              validator: MultiValidator([
                                RequiredValidator(errorText: '*Required'),
                                MaxLengthValidator(13,
                                    errorText: 'number too long'),
                                MinLengthValidator(8,
                                    errorText: 'Must be more than 8'),
                                PatternValidator(r'^[0-9\-\+]{9,15}$',
                                    errorText: 'Insert a valid number'),
                              ]),
                            ),
                            SignUpTextField(
                              controller: controller.emailController,
                              hintText: 'lbl_email',
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'please enter an Email'),
                                EmailValidator(
                                    errorText:
                                        'Please provide a working email'),
                              ]),
                            ),
                            SignUpTextField(
                              controller: controller.passwordController,
                              hintText: 'lbl_password',
                              obscureText: true,
                              textInputType: TextInputType.visiblePassword,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'please enter a password'),
                                PatternValidator(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*[0-9])',
                                    errorText:
                                        'at least 1 UpperCase, 1 lowerCase, 1 digit'),
                                MinLengthValidator(8,
                                    errorText: 'Must be more than 8'),
                              ]),
                            ),
                            loading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : SizedBox(),
                            //!TEXTFIELD ENDS HERE
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(80.00),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    //!SIGN UP BUTTON
                                    GestureDetector(
                                      onTap: () {
                                        final form = _formKey.currentState;
                                        Map<String, String> userMaps = {
                                          'first_name': controller
                                              .firstnameController.text,
                                          'last_name': controller
                                              .lastnameController.text,
                                          'phone_number': controller
                                              .phonenumberController.text,
                                          'email':
                                              controller.emailController.text,
                                        };
                                        if (form!.validate()) {
                                          setState(() {
                                            loading = true;
                                            print('true');
                                          });
                                          try {
                                            authMethods
                                                .signUpWithEmailAndPassword(
                                              controller.emailController.text,
                                              controller
                                                  .passwordController.text,
                                              context,
                                            )
                                                .then((value) {
                                              setState(() {
                                                loading = false;
                                              });
                                              
                                              dataBaseService
                                                  .setUserPersonal(userMaps);
                                            });
                                          } on FirebaseAuthException catch (e) {
                                            dialog.warningDialog(
                                                context: context,
                                                contentText:
                                                    e.message.toString(),
                                                titleText: 'ERROR',
                                                onPositiveClick: () {}
                                                // pageName: AppRoutes.loginPageScreen,
                                                );
                                          }
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(41.00)),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(38.00),
                                          width: getHorizontalSize(169.00),
                                          decoration: AppDecoration
                                              .textstylemontserratextrabold14,
                                          child: Text(
                                            "lbl_sign_up".tr,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstylemontserratextrabold14
                                                .copyWith(
                                              fontSize: getFontSize(14),
                                              height: 2.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //! CANCEL BUTTON
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(10.00),
                                            right: getHorizontalSize(40.00)),
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapBtnCancel();
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(38.00),
                                                width:
                                                    getHorizontalSize(100.00),
                                                decoration: AppDecoration
                                                    .textstylemontserratextrabold141,
                                                child: Text("lbl_cancel".tr,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylemontserratextrabold141
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(14),
                                                            height: 2.00)))))
                                  ],
                                ),
                              ),
                            ),

                            //! DONT HAVE AN ACCOUNT TEXT
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(44.00),
                                  top: getVerticalSize(29.00),
                                  right: getHorizontalSize(44.00)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(2.00),
                                        bottom: getVerticalSize(3.00)),
                                    child: Text(
                                      "msg_you_have_an_acc".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .textstylemontserratregular143
                                          .copyWith(
                                        fontSize: getFontSize(14),
                                      ),
                                    ),
                                  ),

                                  //! TO SIGN IN PAGE
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSignin();
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(14.00)),
                                          child: Text("lbl_sign_in".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstylemontserratregular141
                                                  .copyWith(
                                                      fontSize: getFontSize(14),
                                                      height: 1.57))))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgOutlineInterfa() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }

  onTapBtnCancel() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }

  onTapTxtSignin() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }
}
