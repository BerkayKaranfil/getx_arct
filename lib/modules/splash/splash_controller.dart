import 'package:get/get.dart';
import 'package:getx_arc/routes/app_pages.dart';


class SplashController extends GetxController {
   @override
  void onReady() async{
     super.onReady();
     print("splash açıldı.");
     await Future.delayed(Duration(milliseconds: 3000));
     Get.toNamed(Routes.HOME, parameters: {'data' : 'Berkay Karanfil'});
  } 

}
