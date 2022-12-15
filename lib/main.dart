import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:getx_arc/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'routes/routes.dart';   // Bunu ekledik üsttekini silip.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
         // home: const MyHomePage(title: 'Flutter Demo Home Page'),
         getPages: AppPages.routes,
         initialRoute: AppPages.INITIAL_SPLASH,
         //Routes.Splash üste bunuda yazabiliriz app_pagesin içindeki static tanımladığımız parametreyi kullanmak istersek
         
         enableLog: true,  // Uygulamayı geliştirirken bize loglar döndürmesini istiyoruz. Release yaparken false yapıcaz, Normalde zaten true geliyor görmek için yazdık.
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
