import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_master/screens/home_screen.dart';

void main() => runApp( 
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Flutter Travel UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF3EBACE),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Color(0xFFD8ECF1),
          ),
          scaffoldBackgroundColor: Color(0xFFF3F5F7),
        ),
        home: HomeScreen(),
      ),
    );
  }
}