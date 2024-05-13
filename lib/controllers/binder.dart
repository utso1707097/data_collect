import 'package:get/get.dart';

import 'login_controller.dart';

class DependencyBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}