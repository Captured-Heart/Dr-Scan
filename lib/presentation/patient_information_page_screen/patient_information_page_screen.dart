import 'package:drscanner/core/constants/auth_methods.dart';
import 'package:drscanner/core/constants/firestore_database.dart';
import 'package:drscanner/core/widgets/sign_up_textfield.dart';
import 'package:form_field_validator/form_field_validator.dart'
    hide FormFieldValidator;

import 'controller/patient_information_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientInformationPageScreen extends StatefulWidget {
  @override
  State<PatientInformationPageScreen> createState() =>
      _PatientInformationPageScreenState();
}

class _PatientInformationPageScreenState
    extends State<PatientInformationPageScreen> {
  PatientInformationPageController controller =
      PatientInformationPageController();
  final GlobalKey<FormState> _patientFormKey = GlobalKey();
  final AuthMethods authMethods = AuthMethods();

  final DataBaseService dataBaseService = DataBaseService();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(color: ColorConstant.whiteA700),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                          padding: EdgeInsets.only(top: getVerticalSize(35.00)),
                          child: Form(
                            key: _patientFormKey,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(40.00),
                                          right: getHorizontalSize(40.00)),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(161.00),
                                              margin: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(57.61),
                                                  right:
                                                      getHorizontalSize(57.61)),
                                              child: Text(
                                                  "msg_patient_informa".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .textstylemontserratmedium16
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(16),
                                                          height: 2.13))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(57.61),
                                                  right:
                                                      getHorizontalSize(57.61)),
                                              child: Text(
                                                  "msg_please_fill_out".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .textstylemontserratregular142
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(14),
                                                          height: 1.57)))
                                        ],
                                      ),
                                    ),
                                  ),

                                  //! ALL TEXTFIELD BEGINS
                                  //? NAME
                                  PatientInfoTextField(
                                    controller: controller.nameController,
                                    hintText: 'Name',
                                    validator: RequiredValidator(
                                        errorText: 'provide a  name'),
                                    obscureText: false,
                                  ),

                                  //? AGE
                                  PatientInfoTextField(
                                    controller: controller.ageController,
                                    hintText: 'Age',
                                    validator: RequiredValidator(
                                        errorText: '*Field Required'),
                                    obscureText: false,
                                    textInputType: TextInputType.number,
                                  ),

                                  //? SEX
                                  PatientInfoTextField(
                                    controller: controller.sexController,
                                    hintText: 'Sex',
                                    validator: RequiredValidator(
                                        errorText: '*Field Required'),
                                    obscureText: false,
                                  ),

                                  //?EMAIL
                                  PatientInfoTextField(
                                    controller: controller.emailController,
                                    hintText: 'Email',
                                    textInputType: TextInputType.emailAddress,
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: 'please enter an Email'),
                                      EmailValidator(
                                          errorText:
                                              'Please provide a working email'),
                                    ]),
                                    obscureText: false,
                                  ),

                                  //? PHONE NO
                                  PatientInfoTextField(
                                    controller: controller.phoneNoController,
                                    hintText: 'Phone Number',
                                    textInputType: TextInputType.number,
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: '*Required'),
                                      MaxLengthValidator(13,
                                          errorText: 'number too long'),
                                      MinLengthValidator(8,
                                          errorText: 'Must be more than 8'),
                                      PatternValidator(r'^[0-9\-\+]{9,15}$',
                                          errorText: 'Insert a valid number'),
                                    ]),
                                    obscureText: false,
                                  ),

                                  //! SAVE BUTTON
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(239.00),
                                          top: getVerticalSize(27.00),
                                          right: getHorizontalSize(44.00)),
                                      child: GestureDetector(
                                        onTap: () {

                                          final form =
                                              _patientFormKey.currentState;
                                          Map<String, String> patientMaps = {
                                            'name':
                                                controller.nameController.text,
                                            'age':
                                                controller.ageController.text,
                                            'sex':
                                                controller.sexController.text,
                                            'email':
                                                controller.emailController.text,
                                            'phone_no': controller
                                                .phoneNoController.text
                                          };
                                            try {

                                          if (form!.validate()) {
                                            setState(() {
                                              isLoading = true;
                                            });
                                              dataBaseService
                                                  .setPatientsData(
                                                patientMaps,
                                                controller.nameController.text,
                                              )
                                                  .whenComplete(() {
                                                setState(() {
                                                  isLoading = false;
                                                });
                                                authMethods.dialogs
                                                    .successDialog(
                                                  context: context,
                                                  contentText:
                                                      'Patients data successfully saved',
                                                  titleText: 'SUCCESS',
                                                  onPositiveClick: () {
                                                    onTapBtnSave();
                                                  },
                                                );
                                              });
                                          }

                                            } catch (e) {
                                              authMethods.dialogs.warningDialog(
                                                  context: context,
                                                  titleText: 'ERROR',
                                                  contentText: e.toString(),
                                                  onPositiveClick: () {
                                                    Navigator.pop(context);
                                                  });
                                            }
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(38.00),
                                            width: getHorizontalSize(77.00),
                                            decoration: AppDecoration
                                                .textstylemontserratextrabold14,
                                            child: !isLoading
                                                ? Text(
                                                    "lbl_save".tr,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylemontserratextrabold14
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(14),
                                                            height: 2.00),
                                                  )
                                                : Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                      ),
                                    ),
                                  ),

                                  //! Bottom Nav BAr
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(34.00)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blue50),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        66.00),
                                                    top: getVerticalSize(11.00),
                                                    bottom:
                                                        getVerticalSize(11.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      11.32),
                                                              right:
                                                                  getHorizontalSize(
                                                                      11.32)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      30.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      33.96),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgSoliddevicesc6,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.92),
                                                              right:
                                                                  getHorizontalSize(
                                                                      11.32),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      2.00)),
                                                          child: Text(
                                                              "lbl_scan".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylemontserratbold14
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapGroup90();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            11.00),
                                                        right:
                                                            getHorizontalSize(
                                                                77.92),
                                                        bottom: getVerticalSize(
                                                            11.00)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          9.06),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.06)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          30.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          33.96),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgSolidfilesima6,
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          1.87),
                                                                  right: getHorizontalSize(
                                                                      1.21),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          2.00)),
                                                              child: Text(
                                                                  "lbl_report"
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
                                                                              getFontSize(14))))
                                                        ])))
                                          ]))
                                ]),
                          ))))
            ],
          ),
        ),
      ),
    );
  }

  onTapBtnSave() {
    Get.toNamed(AppRoutes.eyeSelectionPageScreen,
        arguments: controller.nameController.text);
  }

  onTapGroup90() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}

class PatientInfoTextField extends StatelessWidget {
  const PatientInfoTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    this.textInputType,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getHorizontalSize(40.00),
          top: getVerticalSize(10.00),
          right: getHorizontalSize(40.00)),
      child: Container(
        height: getVerticalSize(68.00),
        width: getHorizontalSize(280.00),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText.tr,
            hintStyle: AppStyle.textstylemontserratregular16.copyWith(
                fontSize: getFontSize(16.0), color: ColorConstant.black900),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(getHorizontalSize(5.00)),
                borderSide:
                    BorderSide(color: ColorConstant.blueA70033, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(getHorizontalSize(5.00)),
                borderSide:
                    BorderSide(color: ColorConstant.blueA70033, width: 1)),
            filled: true,
            fillColor: ColorConstant.blue50,
            isDense: true,
            contentPadding: EdgeInsets.only(
              left: getHorizontalSize(20.00),
              top: getVerticalSize(16.00),
              bottom: getVerticalSize(16.00),
            ),
          ),
          style: TextStyle(
              color: ColorConstant.black900,
              fontSize: getFontSize(16.0),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
