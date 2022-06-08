import 'controller/report_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportPageScreen extends GetWidget<ReportPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(27.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(61.00),
                                                width:
                                                    getHorizontalSize(239.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        43.00),
                                                    right: getHorizontalSize(
                                                        43.00)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      203.00),
                                                              margin: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      10.00)),
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
                                                                                40.00),
                                                                            right: getHorizontalSize(
                                                                                40.00)),
                                                                        child: Text(
                                                                            "lbl_report"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstylemontserratbold34.copyWith(fontSize: getFontSize(34), height: 1.00))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(5.00)),
                                                                            child: Text("msg_results_of_prev".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylemontserratregular14.copyWith(fontSize: getFontSize(14), height: 1.57))))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgCircleButton();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          right: getHorizontalSize(
                                                                              10.00),
                                                                          bottom: getVerticalSize(
                                                                              10.00)),
                                                                      child: Container(
                                                                          height: getSize(
                                                                              38.00),
                                                                          width: getSize(
                                                                              38.00),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgCirclebutton,
                                                                              fit: BoxFit.fill)))))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(43.00),
                                                top: getVerticalSize(91.00),
                                                right:
                                                    getHorizontalSize(43.00)),
                                            child: Image.asset(
                                                ImageConstant.imgEyeimage,
                                                height: getSize(159.00),
                                                width: getSize(159.00),
                                                fit: BoxFit.fill))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(115.00),
                                      width: getHorizontalSize(198.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(81.00),
                                          top: getVerticalSize(41.00),
                                          right: getHorizontalSize(81.00)),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(115.00),
                                                    width: getHorizontalSize(
                                                        198.00),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          16.00),
                                                                      top: getVerticalSize(
                                                                          10.00),
                                                                      right: getHorizontalSize(
                                                                          16.00)),
                                                                  child: Text(
                                                                      "lbl_stages_of_dr"
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
                                                                              fontSize: getFontSize(14),
                                                                              height: 1.57)))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          10.00),
                                                                      bottom: getVerticalSize(
                                                                          10.00)),
                                                                  child: Text(
                                                                      "lbl_patient_s_name"
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
                                                                              fontSize: getFontSize(14),
                                                                              height: 1.57)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      right: getHorizontalSize(
                                                                          10.00)),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                            child: Text("lbl_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylemontserratregular141.copyWith(fontSize: getFontSize(14), height: 1.57))),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(9.00), right: getHorizontalSize(10.00)),
                                                                            child: Text("lbl_age".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylemontserratregular141.copyWith(fontSize: getFontSize(14), height: 1.57))),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(9.00), right: getHorizontalSize(10.00)),
                                                                            child: Text("lbl_eye".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylemontserratregular141.copyWith(fontSize: getFontSize(14), height: 1.57))),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(9.00), right: getHorizontalSize(10.00)),
                                                                            child: Text("lbl_diagnosis".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.textstylemontserratregular141.copyWith(fontSize: getFontSize(14), height: 1.57)))
                                                                      ])))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        91.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            15.00),
                                                        top: getVerticalSize(
                                                            31.00),
                                                        right:
                                                            getHorizontalSize(
                                                                15.00),
                                                        bottom: getVerticalSize(
                                                            31.00)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_patient_s_age"
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
                                                                          getFontSize(
                                                                              14),
                                                                      height:
                                                                          1.57)),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top:
                                                                      getVerticalSize(
                                                                          9.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_right_left"
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
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          height:
                                                                              1.57)))
                                                        ])))
                                          ]))),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(76.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blue50),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapGroup38();
                                            },
                                            child: Padding(
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
                                                                      11.06),
                                                              right:
                                                                  getHorizontalSize(
                                                                      11.06)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      30.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      33.96),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgSoliddevicesc1,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      11.06),
                                                              right:
                                                                  getHorizontalSize(
                                                                      11.06),
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
                                                                  .textstylemontserratregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapGroup39();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(11.00),
                                                    right: getHorizontalSize(
                                                        77.92),
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
                                                                      .imgSolidfilesima1,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      0.74),
                                                              right:
                                                                  getHorizontalSize(
                                                                      0.34),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      2.00)),
                                                          child: Text(
                                                              "lbl_report".tr,
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
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapImgCircleButton() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }

  onTapGroup38() {
    Get.toNamed(AppRoutes.patientInformationPageScreen);
  }

  onTapGroup39() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}
