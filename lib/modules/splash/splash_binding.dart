import 'package:get/get.dart';
import 'package:getx_arc/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}