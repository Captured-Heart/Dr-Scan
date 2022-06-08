import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart' as dialog;

class Dialogs {
  Future<Object?> successDialog({
    BuildContext? context,
    String? contentText,
    String? titleText,
  }) {
    return dialog.showAnimatedDialog(
      context: context!,
      barrierDismissible: true,
      builder: ((context1) {
        return dialog.ClassicGeneralDialogWidget(
          titleText: titleText,
          contentText: contentText,
          onNegativeClick: () {
            Navigator.of(context1).pop();
          },
        );
      }),
      animationType: dialog.DialogTransitionType.slideFromLeft,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
    );
  }

  Future<Object?> warningDialog(
      {required BuildContext context,
      String? contentText,
      String? titleText,
      required VoidCallback  onPositiveClick}) {
    return dialog.showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: ((context1) {
        return dialog.ClassicGeneralDialogWidget(
          titleText: titleText,
          contentText: contentText,
          onPositiveClick: () {
            Navigator.of(context1).pop();
          },
          // onPositiveClick: onPositiveClick,
        );
      }),
      animationType: dialog.DialogTransitionType.slideFromLeft,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
    );
  }

  Future<Object?> popUntilDialog(
      {BuildContext? context,
      String? contentText,
      String? titleText,
      VoidCallback? onPositiveClick,
      String? pageName}) {
    return dialog.showAnimatedDialog(
      context: context!,
      barrierDismissible: true,
      builder: ((context2) {
        return dialog.ClassicGeneralDialogWidget(
          titleText: titleText,
          contentText: contentText,
          onPositiveClick: () {
            Navigator.of(context2)
                .popUntil((route) => route.isFirst ? true : false);
            // .popUntil(ModalRoute.withName(pageName!));
          },
        );
      }),
      animationType: dialog.DialogTransitionType.slideFromLeft,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 2),
    );
  }

  Future<Object?> pushToDialog({
    BuildContext? context,
    String? contentText,
    String? titleText,
  }) {
    return dialog.showAnimatedDialog(
      context: context!,
      barrierDismissible: true,
      builder: ((context2) {
        return dialog.ClassicGeneralDialogWidget(
          titleText: titleText,
          contentText: contentText,
          onNegativeClick: () {
            Navigator.popUntil(context, ModalRoute.withName('/homeScreen'));

            // Navigator.of(context2).popAndPushNamed(pageName!);
          },
        );
      }),
      animationType: dialog.DialogTransitionType.slideFromLeft,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 2),
    );
  }

  Future<Object?> popUntil2Dialog(
      {BuildContext? context,
      String? contentText,
      String? titleText,
      VoidCallback? onNegativeClick}) {
    return dialog.showAnimatedDialog(
      context: context!,
      barrierDismissible: true,
      builder: ((context2) {
        return dialog.ClassicGeneralDialogWidget(
            titleText: titleText,
            contentText: contentText,
            onNegativeClick: onNegativeClick);
      }),
      animationType: dialog.DialogTransitionType.slideFromLeft,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 2),
    );
  }

  
}