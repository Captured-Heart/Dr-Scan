import 'dart:io';

import 'package:drscanner/core/utils/pick_image.dart';
import 'package:image_picker/image_picker.dart';

import 'controller/file_selection_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileRightSelectionPageScreen extends StatefulWidget {
  final nameController = Get.arguments;

  @override
  State<FileRightSelectionPageScreen> createState() =>
      _FileRightSelectionPageScreenState();
}

class _FileRightSelectionPageScreenState
    extends State<FileRightSelectionPageScreen> {
  FileSelectionPageController controller = FileSelectionPageController();
  final picker = ImagePicker();
  File? imgFile;
  bool imageSource = true;

  //
  Future<void> pickImages() async {
    final selected = await picker.pickImage(
      source: imageSource ? ImageSource.camera : ImageSource.gallery,
      imageQuality: 90,
      maxHeight: 400,
    );
    setState(() {
      if (selected != null) {
        imgFile = File(selected.path);
        print(imgFile!.lengthSync());
      } else {
        print('No image selected.');
      }
    });
  }

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
                                              onTapImgCircleButton();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        38.00),
                                                    bottom:
                                                        getVerticalSize(15.00)),
                                                child: Container(
                                                    height: getSize(38.00),
                                                    width: getSize(38.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgCirclebutton3,
                                                        fit: BoxFit.fill)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(48.50),
                                                top: getVerticalSize(2.00),
                                                right:
                                                    getHorizontalSize(105.50)),
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
                                                                  21.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  21.00)),
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
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  21.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  20.00)),
                                                      child: Text(
                                                          "lbl_load_you_file"
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
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(95.00),
                                          top: getVerticalSize(189.00),
                                          right: getHorizontalSize(69.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imageSource = true;
                                            });
                                            pickImages().whenComplete(() {
                                              if (imgFile != null) {
                                                onTapBtnCaptureimage();
                                              }
                                              //!add else to display dialog to tell user that no image was picked
                                            });
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
                                              child: Text(
                                                  "lbl_capture_image".tr,
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
                                          left: getHorizontalSize(95.00),
                                          top: getVerticalSize(51.00),
                                          right: getHorizontalSize(69.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imageSource = false;
                                            });
                                            print(widget.nameController);

                                            pickImages().whenComplete(() {
                                              if (imgFile != null) {
                                                onTapBtnCaptureimage();
                                              }
                                              //!add else to display dialog to tell user that no image was picked
                                            });

                                            // onTapBtnUploadimage();
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
                                              child: Text("lbl_upload_image".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylemontserratextrabold20
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(20),
                                                          height: 1.40)))))),
                              Container(
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
                                                                  .imgSoliddevicesc4,
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
                                              onTapGroup72();
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
                                                                      .imgSolidfilesima4,
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
    Get.toNamed(AppRoutes.eyeSelectionPageScreen);
  }

  onTapBtnCaptureimage() {
    Get.toNamed(AppRoutes.analyzingRightPageScreen, arguments: [imgFile, widget.nameController, 'Right']);
  }

  onTapBtnUploadimage() {
    Get.toNamed(AppRoutes.analyzingRightPageScreen);
  }

  onTapGroup72() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}
