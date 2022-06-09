import 'dart:io';

import 'controller/analyzing_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnalyzingRightPageScreen extends GetWidget<AnalyzingPageController> {
  final File? imgFile;
  final one = Get.arguments;
  AnalyzingRightPageScreen({this.imgFile});
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
                                      top: getVerticalSize(38.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // onTapImgCircleButton();
                                            onTapBack();
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(38.00),
                                                bottom: getVerticalSize(15.00)),
                                            child: Container(
                                              height: getSize(38.00),
                                              width: getSize(38.00),
                                              child: SvgPicture.asset(
                                                  ImageConstant
                                                      .imgCirclebutton2,
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.50),
                                                top: getVerticalSize(2.00),
                                                right:
                                                    getHorizontalSize(72.50)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  54.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  54.00)),
                                                      child: Text("lbl_scan".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratbold34
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          34),
                                                                  height:
                                                                      1.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "msg_analyze_your_ey"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratregular14
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14))))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(82.00),
                                          top: getVerticalSize(87.00),
                                          right: getHorizontalSize(82.00)),
                                      child: Image.file(one[0],
                                          height: getSize(159.00),
                                          width: getSize(159.00),
                                          fit: BoxFit.fill))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(82.00),
                                          top: getVerticalSize(92.00),
                                          right: getHorizontalSize(82.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnAnalyze();
                                            print(one[0]);
                                            print(one[1][0]);
                                            print(one[2]);

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
                                              child: Text("lbl_analyze".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylemontserratextrabold20
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(20),
                                                          height: 1.40)))))),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(93.00)),
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
                                                left: getHorizontalSize(66.00),
                                                top: getVerticalSize(11.00),
                                                bottom: getVerticalSize(11.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                                  .imgSoliddevicesc3,
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
                                                      child: Text("lbl_scan".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratbold14
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14))))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapGroup64();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        77.92),
                                                    bottom:
                                                        getVerticalSize(10.00)),
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
                                                                      .imgSolidfilesima3,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      1.87),
                                                              right:
                                                                  getHorizontalSize(
                                                                      1.21),
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
                                                                  .textstylemontserratregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapImgCircleButton() {
    Get.toNamed(AppRoutes.fileRightSelectionPageScreen);
  }

  onTapBack() {
    Get.back(result: [imgFile]);
  }

  onTapBtnAnalyze() {
    Get.toNamed(AppRoutes.resultPageScreen, arguments: [one[0], one[1][0], one[2]]);
  }

  onTapGroup64() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}
