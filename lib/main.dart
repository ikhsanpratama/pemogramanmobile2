import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PemogramanMobile2());
}

class PemogramanMobile2 extends StatelessWidget {
  const PemogramanMobile2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color(0xff4C53FB),
            ),
            home: const SplashScreen(),
          );
        });
  }
}
