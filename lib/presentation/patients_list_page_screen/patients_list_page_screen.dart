import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/patients_list_page_controller.dart';
import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientsListPageScreen extends GetWidget<PatientsListPageController> {
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(79.00),
                              top: getVerticalSize(27.00),
                              right: getHorizontalSize(78.00)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(40.00),
                                        right: getHorizontalSize(40.00)),
                                    child: Text("lbl_report".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratbold34
                                            .copyWith(
                                                fontSize: getFontSize(34),
                                                height: 1.00))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        child: Text("msg_results_of_prev".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .textstylemontserratregular14
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    height: 1.57))))
                              ]))),

                  //! 1 Andrea
                  SizedBox(
height: MediaQuery.of(context).size.height * 0.5,
                    child: StreamBuilder(
                        stream: getPatients(context),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          var nothingDae = !snapshot.hasData;
                          // if (snapshot.connectionState ==
                          //     ConnectionState.waiting) {
                          //   return Center(
                          //     child: CircularProgressIndicator(),
                          //   );
                          // }
                          return nothingDae
                              ? Center(
                                  child: Text(
                                    'No files Available, Kindly check your internet',
                                  ),
                                )
                              : ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                  itemBuilder: ((context, index) {
                                    var document = snapshot.data!.docs[index];
                                    return GestureDetector(
                                        onTap: () {
                                          onTapGroup13();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: getVerticalSize(120.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700),
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
                                                          left: getHorizontalSize(
                                                              48.00),
                                                          top: getVerticalSize(
                                                              14.00),
                                                          bottom: getVerticalSize(
                                                              14.00)),
                                                      child: Text(document['name'],
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
                                                                  height: 1.57))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              14.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  69.00),
                                                          bottom: getVerticalSize(
                                                              14.00)),
                                                      child: Text(document['name'],
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
                                                                  height: 1.57)))
                                                ])));
                                  }),
                                );
                        }),
                  ),

                  //!
                  GestureDetector(
                      onTap: () {
                        onTapGroup14();
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(58.00),
                                        top: getVerticalSize(14.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_ayra".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(14.00),
                                        right: getHorizontalSize(69.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_no_dr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57)))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapGroup15();
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(50.50),
                                        top: getVerticalSize(14.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_bobby".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(14.00),
                                        right: getHorizontalSize(81.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_dr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57)))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapGroup16();
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(60.50),
                                        top: getVerticalSize(14.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_cici".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(14.00),
                                        right: getHorizontalSize(69.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_no_dr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57)))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapGroup17();
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(50.00),
                                        top: getVerticalSize(14.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_danny".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(14.00),
                                        right: getHorizontalSize(69.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_no_dr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57)))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapGroup18();
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(62.50),
                                        top: getVerticalSize(14.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_fifi".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(14.00),
                                        right: getHorizontalSize(69.00),
                                        bottom: getVerticalSize(14.00)),
                                    child: Text("lbl_no_dr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratregular141
                                            .copyWith(
                                                fontSize: getFontSize(14),
                                                height: 1.57)))
                              ]))),
                  Container(
                    margin: EdgeInsets.only(top: getVerticalSize(62.00)),
                    decoration: BoxDecoration(color: ColorConstant.blue50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapGroup24();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(66.00),
                                    top: getVerticalSize(11.00),
                                    bottom: getVerticalSize(11.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(11.06),
                                              right: getHorizontalSize(11.06)),
                                          child: Container(
                                              height: getVerticalSize(30.00),
                                              width: getHorizontalSize(33.96),
                                              child: SvgPicture.asset(
                                                  ImageConstant
                                                      .imgSoliddevicesc,
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(11.06),
                                              right: getHorizontalSize(11.06),
                                              bottom: getVerticalSize(2.00)),
                                          child: Text("lbl_scan".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstylemontserratregular141
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(14))))
                                    ]))),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getVerticalSize(11.00),
                              right: getHorizontalSize(77.92),
                              bottom: getVerticalSize(11.00)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(9.06),
                                      right: getHorizontalSize(9.06)),
                                  child: Container(
                                      height: getVerticalSize(30.00),
                                      width: getHorizontalSize(33.96),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgSolidfilesima,
                                          fit: BoxFit.fill))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(0.74),
                                      right: getHorizontalSize(0.34),
                                      bottom: getVerticalSize(2.00)),
                                  child: Text("lbl_report".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.textstylemontserratbold14
                                          .copyWith(fontSize: getFontSize(14))))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stream<QuerySnapshot> getPatients(BuildContext context) async* {
    yield* FirebaseFirestore.instance.collection('patients').snapshots();
  }

  onTapGroup13() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup14() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup15() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup16() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup17() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup18() {
    Get.toNamed(AppRoutes.reportPageScreen);
  }

  onTapGroup24() {
    Get.toNamed(AppRoutes.patientInformationPageScreen);
  }
}
