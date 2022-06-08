import 'package:drscanner/core/app_export.dart';
import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
    required this.obscureText,
    this.textInputType,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: getHorizontalSize(44.00),
            top: getVerticalSize(1.00),
            right: getHorizontalSize(36.00)),
        child: Container(
            height: getVerticalSize(68.00),
            width: getHorizontalSize(280.00),

            //! PASSWORD FIELD
            child: TextFormField(
                controller: controller,
                obscureText: obscureText,
                validator: validator,
                keyboardType: textInputType,
                decoration: InputDecoration(
                    hintText: hintText.tr,
                    hintStyle: AppStyle.textstylemontserratregular16.copyWith(
                        fontSize: getFontSize(16.0),
                        color: ColorConstant.black900),
                    errorBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(5.00)),
                        borderSide: BorderSide(
                            color: ColorConstant.blueA70033, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(5.00)),
                        borderSide: BorderSide(
                            color: ColorConstant.blueA70033, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(5.00)),
                        borderSide: BorderSide(
                            color: ColorConstant.blueA70033, width: 1)),
                    filled: true,
                    fillColor: ColorConstant.blue50,
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                        left: getHorizontalSize(20.00),
                        top: getVerticalSize(16.00),
                        bottom: getVerticalSize(16.00))),
                style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(16.0),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400))));
  }
}
