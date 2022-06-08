import 'package:drscanner/core/widgets/sign_up_textfield.dart';
import 'package:form_field_validator/form_field_validator.dart' hide FormFieldValidator;

import 'controller/patient_information_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientInformationPageScreen
    extends GetWidget<PatientInformationPageController> {
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
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(35.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        40.00),
                                                    right: getHorizontalSize(
                                                        40.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  161.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  57.61),
                                                              right:
                                                                  getHorizontalSize(
                                                                      57.61)),
                                                          child: Text(
                                                              "msg_patient_informa"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylemontserratmedium16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              16),
                                                                      height:
                                                                          2.13))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      57.61),
                                                              right:
                                                                  getHorizontalSize(
                                                                      57.61)),
                                                          child: Text(
                                                              "msg_please_fill_out"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylemontserratregular142
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14),
                                                                      height:
                                                                          1.57)))
                                                    ]))),
                                        PatientInfoTextField(
                                          controller: controller.nameController,
                                          hintText: 'Name',
                                          validator: RequiredValidator(
                                  errorText: 'provide a  name'), obscureText: false,
                            

                                        ),
                                         PatientInfoTextField(
                                          controller: controller.nameController,
                                          hintText: 'Name',
                                          validator: RequiredValidator(
                                  errorText: 'provide a  name'), obscureText: false,
                            

                                        ), PatientInfoTextField(
                                          controller: controller.nameController,
                                          hintText: 'Name',
                                          validator: RequiredValidator(
                                  errorText: 'provide a  name'), obscureText: false,
                            

                                        ), PatientInfoTextField(
                                          controller: controller.nameController,
                                          hintText: 'Name',
                                          validator: RequiredValidator(
                                  errorText: 'provide a  name'), obscureText: false,
                            

                                        ), PatientInfoTextField(
                                          controller: controller.nameController,
                                          hintText: 'Name',
                                          validator: RequiredValidator(
                                  errorText: 'provide a  name'), obscureText: false,
                            

                                        ),
                                        // Padding(
                                        //     padding: EdgeInsets.only(
                                        //         left: getHorizontalSize(40.00),
                                        //         top: getVerticalSize(16.00),
                                        //         right:
                                        //             getHorizontalSize(40.00)),
                                        //     child: Container(
                                        //         height: getVerticalSize(48.00),
                                        //         width:
                                        //             getHorizontalSize(280.00),
                                        //         child: TextFormField(
                                        //             controller: controller
                                        //                 .ageController,
                                        //             decoration: InputDecoration(
                                        //                 hintText: "lbl_age2".tr,
                                        //                 hintStyle: AppStyle
                                        //                     .textstylemontserratregular16
                                        //                     .copyWith(
                                        //                         fontSize: getFontSize(
                                        //                             16.0),
                                        //                         color: ColorConstant
                                        //                             .black900),
                                        //                 enabledBorder: OutlineInputBorder(
                                        //                     borderRadius:
                                        //                         BorderRadius.circular(
                                        //                             getHorizontalSize(5.00)),
                                        //                     borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 filled: true,
                                        //                 fillColor: ColorConstant.blue50,
                                        //                 isDense: true,
                                        //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                        //             style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16.0), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)))),
                                        // Padding(
                                        //     padding: EdgeInsets.only(
                                        //         left: getHorizontalSize(40.00),
                                        //         top: getVerticalSize(16.00),
                                        //         right:
                                        //             getHorizontalSize(40.00)),
                                        //     child: Container(
                                        //         height: getVerticalSize(48.00),
                                        //         width:
                                        //             getHorizontalSize(280.00),
                                        //         child: TextFormField(
                                        //             controller: controller
                                        //                 .sexController,
                                        //             decoration: InputDecoration(
                                        //                 hintText: "lbl_sex".tr,
                                        //                 hintStyle: AppStyle
                                        //                     .textstylemontserratregular16
                                        //                     .copyWith(
                                        //                         fontSize: getFontSize(
                                        //                             16.0),
                                        //                         color: ColorConstant
                                        //                             .black900),
                                        //                 enabledBorder: OutlineInputBorder(
                                        //                     borderRadius:
                                        //                         BorderRadius.circular(
                                        //                             getHorizontalSize(5.00)),
                                        //                     borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 filled: true,
                                        //                 fillColor: ColorConstant.blue50,
                                        //                 isDense: true,
                                        //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                        //             style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16.0), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)))),
                                        // Padding(
                                        //     padding: EdgeInsets.only(
                                        //         left: getHorizontalSize(40.00),
                                        //         top: getVerticalSize(16.00),
                                        //         right:
                                        //             getHorizontalSize(40.00)),
                                        //     child: Container(
                                        //         height: getVerticalSize(48.00),
                                        //         width:
                                        //             getHorizontalSize(280.00),
                                        //         child: TextFormField(
                                        //             controller: controller
                                        //                 .emailController,
                                        //             decoration: InputDecoration(
                                        //                 hintText:
                                        //                     "lbl_email".tr,
                                        //                 hintStyle: AppStyle
                                        //                     .textstylemontserratregular16
                                        //                     .copyWith(
                                        //                         fontSize:
                                        //                             getFontSize(
                                        //                                 16.0),
                                        //                         color: ColorConstant
                                        //                             .black900),
                                        //                 enabledBorder: OutlineInputBorder(
                                        //                     borderRadius:
                                        //                         BorderRadius.circular(getHorizontalSize(5.00)),
                                        //                     borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 filled: true,
                                        //                 fillColor: ColorConstant.blue50,
                                        //                 isDense: true,
                                        //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                        //             style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16.0), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)))),
                                        // Padding(
                                        //     padding: EdgeInsets.only(
                                        //         left: getHorizontalSize(40.00),
                                        //         top: getVerticalSize(16.00),
                                        //         right:
                                        //             getHorizontalSize(40.00)),
                                        //     child: Container(
                                        //         height: getVerticalSize(48.00),
                                        //         width:
                                        //             getHorizontalSize(280.00),
                                        //         child: TextFormField(
                                        //             controller: controller
                                        //                 .phoneNoController,
                                        //             decoration: InputDecoration(
                                        //                 hintText:
                                        //                     "lbl_phone_no".tr,
                                        //                 hintStyle: AppStyle
                                        //                     .textstylemontserratregular16
                                        //                     .copyWith(
                                        //                         fontSize:
                                        //                             getFontSize(
                                        //                                 16.0),
                                        //                         color: ColorConstant
                                        //                             .black900),
                                        //                 enabledBorder:
                                        //                     OutlineInputBorder(
                                        //                         borderRadius:
                                        //                             BorderRadius.circular(getHorizontalSize(5.00)),
                                        //                         borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blueA70033, width: 1)),
                                        //                 filled: true,
                                        //                 fillColor: ColorConstant.blue50,
                                        //                 isDense: true,
                                        //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(16.00), bottom: getVerticalSize(16.00))),
                                        //             style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(16.0), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        239.00),
                                                    top: getVerticalSize(27.00),
                                                    right: getHorizontalSize(
                                                        44.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnSave();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            38.00),
                                                        width:
                                                            getHorizontalSize(
                                                                77.00),
                                                        decoration: AppDecoration
                                                            .textstylemontserratextrabold14,
                                                        child: Text(
                                                            "lbl_save".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstylemontserratextrabold14
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14),
                                                                    height:
                                                                        2.00)))))),
                                        Container(
                                            margin: EdgeInsets.only(
                                                top: getVerticalSize(34.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  66.00),
                                                          top: getVerticalSize(
                                                              11.00),
                                                          bottom:
                                                              getVerticalSize(
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
                                                                    left: getHorizontalSize(
                                                                        11.32),
                                                                    right: getHorizontalSize(
                                                                        11.32)),
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            30.00),
                                                                    width: getHorizontalSize(
                                                                        33.96),
                                                                    child: SvgPicture.asset(
                                                                        ImageConstant
                                                                            .imgSoliddevicesc6,
                                                                        fit: BoxFit
                                                                            .fill))),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        9.92),
                                                                    right: getHorizontalSize(
                                                                        11.32),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            2.00)),
                                                                child: Text(
                                                                    "lbl_scan"
                                                                        .tr,
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
                                                                                getFontSize(14))))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapGroup90();
                                                      },
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      77.92),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      11.00)),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            9.06),
                                                                        right: getHorizontalSize(
                                                                            9.06)),
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            30.00),
                                                                        width: getHorizontalSize(
                                                                            33.96),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgSolidfilesima6,
                                                                            fit:
                                                                                BoxFit.fill))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            1.87),
                                                                        right: getHorizontalSize(
                                                                            1.21),
                                                                        bottom: getVerticalSize(
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
                                                                            .copyWith(fontSize: getFontSize(14))))
                                                              ])))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapBtnSave() {
    Get.toNamed(AppRoutes.eyeSelectionPageScreen);
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
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getHorizontalSize(40.00),
          top: getVerticalSize(80.00),
          right: getHorizontalSize(40.00)),
      child: Container(
        height: getVerticalSize(48.00),
        width: getHorizontalSize(280.00),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
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
