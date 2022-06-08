import 'controller/eye_selection_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EyeSelectionPageScreen extends GetWidget<EyeSelectionPageController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: getVerticalSize(53.00),
                                  width: getHorizontalSize(285.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(38.00),
                                      top: getVerticalSize(38.00),
                                      right: getHorizontalSize(37.00)),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(266.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(2.00)),
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
                                                                      89.50),
                                                              right:
                                                                  getHorizontalSize(
                                                                      89.50)),
                                                          child: Text(
                                                              "lbl_scan".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylemontserratbold34
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              34),
                                                                      height:
                                                                          1.00))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                              "msg_select_one_of_y"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylemontserratregular14
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapImgCircleButton();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                                10.00),
                                                        bottom: getVerticalSize(
                                                            10.00)),
                                                    child: Container(
                                                        height: getSize(38.00),
                                                        width: getSize(38.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgCirclebutton4,
                                                            fit:
                                                                BoxFit.fill)))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(69.00),
                                          top: getVerticalSize(189.00),
                                          right: getHorizontalSize(69.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnRighteye();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(48.00),
                                              width: getHorizontalSize(196.00),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.blueA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              5.00))),
                                              child: Text("lbl_right_eye".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylemontserratextrabold20
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(20),
                                                          height: 1.40)))))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(69.00),
                                          top: getVerticalSize(51.00),
                                          right: getHorizontalSize(69.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnLefteye();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(48.00),
                                              width: getHorizontalSize(196.00),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.blueA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              5.00))),
                                              child: Text("lbl_left_eye".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylemontserratextrabold20
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(20),
                                                          height: 1.40)))))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(143.00)),
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
                                                                      .imgSoliddevicesc5,
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
                                                  onTapGroup83();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            12.00),
                                                        right:
                                                            getHorizontalSize(
                                                                77.92),
                                                        bottom: getVerticalSize(
                                                            10.00)),
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
                                                                          .imgSolidfilesima5,
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
                                          ])))
                            ]))))));
  }

  onTapImgCircleButton() {
    Get.toNamed(AppRoutes.patientInformationPageScreen);
  }

  onTapBtnRighteye() {
    Get.toNamed(AppRoutes.fileSelectionPageScreen);
  }

  onTapBtnLefteye() {
    Get.toNamed(AppRoutes.fileSelectionPageScreen);
  }

  onTapGroup83() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}
