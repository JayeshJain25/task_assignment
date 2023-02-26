import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/route_generator.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Med App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
