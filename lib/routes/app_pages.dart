import 'package:get/get.dart';
import 'package:getx_arc/modules/home/home_binding.dart';
import 'package:getx_arc/modules/home/home_screen.dart';
import 'package:getx_arc/modules/splash/splash_binding.dart';
import 'package:getx_arc/modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  
  static const INITIAL = Routes.HOME;
  //static const INITIAL_SPLASH = Routes.Splash;
  

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page: () => HomeScreen(),
      binding: HomeBinding()
      ),
    GetPage(
      name: Routes.SPLASH, 
      page: () => SplashScreen(), 
      binding: SplashBinding()
      ),  
  ];
}
