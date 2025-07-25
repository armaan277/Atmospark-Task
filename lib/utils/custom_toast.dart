import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomToast {
  static void showCustomToast(BuildContext context, {required String message}) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.12,
        left: 20,
        right: 20,
        child: Material(
          color: AppColors.appTransparentColor,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.appDarkGreenColor,
              borderRadius: BorderRadius.circular(4),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              message,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.appWhiteColor,
                letterSpacing: 1.1,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}
