import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData icon;
  final bool? isBookingConfirm;

  const BookButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.isBookingConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(
          title,
          style: TextStyle(
            color: isBookingConfirm == true ? AppColors.appWhiteColor : AppColors.appBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        icon: Icon(
          icon,
          size: 20,
          color: isBookingConfirm == true ? AppColors.appWhiteColor : AppColors.appBlackColor,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isBookingConfirm == true
              ? AppColors.appDarkGreenColor
              : AppColors.appOfLightGreenColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
