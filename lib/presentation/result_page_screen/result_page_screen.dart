import 'dart:io';

import 'package:drscanner/core/constants/auth_methods.dart';
import 'package:drscanner/core/constants/firestore_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'controller/result_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultPageScreen extends StatefulWidget {
  ResultPageScreen({this.imgFile});
  final File? imgFile;

  @override
  State<ResultPageScreen> createState() => _ResultPageScreenState();
}

class _ResultPageScreenState extends State<ResultPageScreen> {
  ResultPageController controller = ResultPageController();

  final one = Get.arguments;

  AuthMethods authMethods = AuthMethods();

  DataBaseService dataBaseService = DataBaseService();
  bool isLoading = true;
  var imgUrl;
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
                                      top: getVerticalSize(38.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
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
                                                          left:
                                                              getHorizontalSize(
                                                                  38.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  15.00)),
                                                      child: Container(
                                                          height:
                                                              getSize(38.00),
                                                          width: getSize(38.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgCirclebutton1,
                                                              fit: BoxFit
                                                                  .fill)))),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        48.50),
                                                    top: getVerticalSize(2.00),
                                                    right: getHorizontalSize(
                                                        105.50)),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    10.50),
                                                            right:
                                                                getHorizontalSize(
                                                                    10.50)),
                                                        child: Text(
                                                            "lbl_scan".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
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
                                                                    10.50),
                                                            right:
                                                                getHorizontalSize(
                                                                    9.50)),
                                                        child: Text(
                                                            "msg_your_eye_result"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratregular14
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14))))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(14.00),
                                              top: getVerticalSize(75.00),
                                              right: getHorizontalSize(14.00)),
                                          child: Image.file(
                                            one[0],
                                            height: getSize(123.00),
                                            width: getSize(123.00),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(14.00),
                                                top: getVerticalSize(46.00),
                                                right:
                                                    getHorizontalSize(14.00)),
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
                                                                  113.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  113.00)),
                                                      child: Text("lbl_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratbold16
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
                                                                  113.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  113.00)),
                                                      child: Text(one[1],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratregular141
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  height:
                                                                      1.57)))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(14.00),
                                                top: getVerticalSize(20.00),
                                                right:
                                                    getHorizontalSize(14.00)),
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
                                                                  121.50),
                                                          right:
                                                              getHorizontalSize(
                                                                  121.50)),

                                                      //! IT MUST BE EITHER RIGHT OR LEFT
                                                      child: Text("lbl_eye".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratbold16
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
                                                                  121.50),
                                                          top: getVerticalSize(
                                                              0.50),
                                                          right:
                                                              getHorizontalSize(
                                                                  121.50),
                                                          bottom:
                                                              getVerticalSize(
                                                                  0.50)),
                                                      child: Text(one[2],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratregular141
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  height:
                                                                      1.57)))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(14.00),
                                                top: getVerticalSize(8.00),
                                                right:
                                                    getHorizontalSize(14.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              93.62),
                                                          right:
                                                              getHorizontalSize(
                                                                  93.62)),
                                                      child: Text(
                                                          "msg_diagnosis_resul"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratbold16
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
                                                                  93.62),
                                                          right:
                                                              getHorizontalSize(
                                                                  93.62)),
                                                      child: Text(
                                                          "lbl_stages_of_dr".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstylemontserratregular141
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  height:
                                                                      1.57)))
                                                ])),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(35.00),
                                                top: getVerticalSize(12.00),
                                                right:
                                                    getHorizontalSize(35.00)),
                                            child: GestureDetector(
                                              onTap: () async {
                                                print(
                                                    '${one[2] + ' eye:' + ' Stages of Glaucoma'}');
                                                

                                                try {
                                                  setState(() {
                                                    isLoading = false;
                                                  });

                                                  Reference ref =
                                                      FirebaseStorage.instance
                                                          .ref()
                                                          .child(one[1] +
                                                              'picture');
                                                  await ref
                                                      .putFile(one[0])
                                                      .whenComplete(() => ref
                                                              .getDownloadURL()
                                                              .then((value) {
                                                            setState(() {
                                                              imgUrl = value;
                                                            });
                                                          }));
                                                  Map<String, String>
                                                      patientsMap = {
                                                    '${one[2]}eye': one[2],
                                                    'diagnosis':
                                                        '${one[2] + ':' + ' Stages of Glaucoma'}',
                                                    'imgUrl': imgUrl.toString()
                                                  };
                                                  dataBaseService
                                                      .updatePatientsData(
                                                          patientsMap, one[1])
                                                      .whenComplete(() =>
                                                          authMethods.dialogs
                                                              .successDialog(
                                                            context: context,
                                                            contentText:
                                                                'Patients data successfully saved',
                                                            titleText:
                                                                'SUCCESS',
                                                            onPositiveClick:
                                                                () {
                                                              onTapBtnSave();
                                                            },
                                                          ));
                                                  // setState(() {
                                                  //   isLoading = true;
                                                  // });
                                                } catch (e) {
                                                  authMethods.dialogs.warningDialog(
                                                      context: context,
                                                      contentText: e
                                                          .toString()
                                                          .toString(),
                                                      titleText: 'ERROR',
                                                      onPositiveClick: () {}
                                                      // pageName: AppRoutes.loginPageScreen,
                                                      );
                                                  setState(() {
                                                    isLoading = true;
                                                  });
                                                }
                                                 setState(() {
                                                    isLoading = true;
                                                  });
                                                //! save to database the eye, diagonsis result

                                                // onTapBtnSave();
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(38.00),
                                                width: getHorizontalSize(82.00),
                                                decoration: AppDecoration
                                                    .textstylemontserratextrabold14,
                                                child: isLoading
                                                    ? Text("lbl_save".tr,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstylemontserratextrabold14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                height: 2.00))
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(20.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.blue50),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      66.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      11.00),
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
                                                                            11.32),
                                                                        right: getHorizontalSize(
                                                                            11.32)),
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            30.00),
                                                                        width: getHorizontalSize(
                                                                            33.96),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgSoliddevicesc2,
                                                                            fit:
                                                                                BoxFit.fill))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            9.92),
                                                                        right: getHorizontalSize(
                                                                            11.32),
                                                                        bottom: getVerticalSize(
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
                                                                            .copyWith(fontSize: getFontSize(14))))
                                                              ])),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapGroup53();
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      12.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          77.92),
                                                                  bottom:
                                                                      getVerticalSize(
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
                                                                                9.06),
                                                                            right: getHorizontalSize(
                                                                                9.06)),
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(30.00),
                                                                            width: getHorizontalSize(33.96),
                                                                            child: SvgPicture.asset(ImageConstant.imgSolidfilesima2, fit: BoxFit.fill))),
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
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstylemontserratregular141.copyWith(fontSize: getFontSize(14))))
                                                                  ])))
                                                    ])))
                                      ]))))
                    ]))));
  }

  // onTapImgCircleButton() {
  onTapBack() {
    Get.back(result: [widget.imgFile]);
  }

  onTapBtnSave() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }

  onTapGroup53() {
    Get.toNamed(AppRoutes.patientsListPageScreen);
  }
}
