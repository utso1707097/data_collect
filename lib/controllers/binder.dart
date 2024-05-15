import 'package:data_fetch/controllers/attendance_controller.dart';
import 'package:data_fetch/screens/attendance_screen.dart';
import 'package:get/get.dart';
import 'login_controller.dart';
import 'shared_preference_controller.dart';

class DependencyBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SharedPreferenceController());
    Get.put(LoginController());
    Get.put(AttendanceController());
  }
}