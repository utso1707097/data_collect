import 'package:get/get.dart';
import 'login_controller.dart';
import 'shared_preference_controller.dart';

class DependencyBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SharedPreferenceController());
    Get.put(LoginController());
  }
}