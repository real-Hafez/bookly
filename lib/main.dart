import 'package:bookly/constatnts.dart';
import 'package:bookly/core/utilts/app_utilts.dart';
import 'package:bookly/features/splash/presentation/manager/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: app_routers.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      // home: const SplashView(),
    );
  }
}
