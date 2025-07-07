import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'core/core.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark)
  );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key :key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: "AQUA FITNESS APP",
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
        textTheme: const TextTheme(
          bodyMedium : TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(milliseconds: 230),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
  
}