import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_arc/modules/home/home_controller.dart';
//class HomeScreen extends StatelessWidget {      Bunun yerine alttakini yazınca get.put yazmamıza gerek kalmıyor.
class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          "${controller.data}",
          style: TextStyle(fontSize: 37),
        ),
      ),
    );
  }
}
