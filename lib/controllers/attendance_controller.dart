import 'package:get/get.dart';

class AttendanceController extends GetxController {
  var selectedType = ''.obs;

  void selectType(String type) {
    selectedType.value = type;
  }
}
