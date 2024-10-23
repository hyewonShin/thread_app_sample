import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ThreadFeedWriteController extends GetxController {
  String contents = '';
  List<XFile>? selectedImages;

  void setContent(String value) {
    contents = value;
    update();
  }

  void setSelectedImages(List<XFile>? value) {
    selectedImages = value;
    update();
  }
}
