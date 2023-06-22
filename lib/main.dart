import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temperatutre_convertor/pages/temperature_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: TemperatureConvertor()
      ),
    );
  }
}
