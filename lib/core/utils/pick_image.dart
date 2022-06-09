import 'dart:io';

import 'package:image_picker/image_picker.dart';

class PickImage{
  File? _imgFile;
  final picker = ImagePicker();
 
  Future pickImages() async {
    final selected = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 90,
      maxHeight: 400,
    );
return selected;
    // setState(() {
    //   if (selected != null) {
    //     _imgFile = File(selected.path);
    //     print(_imgFile!.lengthSync());
    //   } else {
    //     print('No image selected.');
    //   }
    // });
  }
}