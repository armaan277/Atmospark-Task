import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:atmospark_task/routes/app_router.dart';
import 'package:atmospark_task/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroundBookingApp extends StatelessWidget {
  const GroundBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ground Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(backgroundColor: AppColors.appDarkGreenColor),
        scaffoldBackgroundColor: AppColors.appWhiteColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appDarkGreenColor,
        ),
      ),
      initialRoute: Routes.homeView,
      routes: AppRouter.routes,
    );
  }
}
