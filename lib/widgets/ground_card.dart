import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:atmospark_task/models/ground_model.dart';
import 'package:atmospark_task/routes/routes.dart';
import 'package:atmospark_task/view_models/ground_view_model.dart';
import 'package:flutter/material.dart';

class GroundCard extends StatelessWidget {
  final int index;
  final Ground ground;
  const GroundCard({super.key, required this.index, required this.ground});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.groundDetailView,
          arguments: ground,
        );
      },
      child: Container(
        height: 380,
        decoration: BoxDecoration(
          color: AppColors.appOfLightGreenColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(ground.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
                      padding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.appBlackColor.withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: AppColors.appGoldColor, size: 14),
                          SizedBox(width: 4),
                          Text(
                            '${GroundViewModel.grounds[index].rating}',
                            style: TextStyle(
                              color: AppColors.appWhiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    padding: EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.appDarkGreenColor,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      ground.category,
                      style: TextStyle(fontSize: 12, color: AppColors.appWhiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          GroundViewModel.grounds[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.appLightGreenColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Text(
                          '₹${ground.pricePerHour}',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.appGrayColor,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        ground.location,
                        style: TextStyle(color: AppColors.appGrayColor, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: AppColors.appGrayColor, size: 18),
                          SizedBox(width: 5),
                          Text(
                            '${ground.availableSlots.length} slots available',
                            style: TextStyle(color: AppColors.appGrayColor, fontSize: 14),
                          ),
                        ],
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Routes.groundDetailView,
                            arguments: ground,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_right_alt,
                          color: AppColors.appDarkGreenColor,
                          size: 20,
                        ),
                        label: const Text(
                          'View Details',
                          style: TextStyle(
                            color: AppColors.appDarkGreenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (states) {
                              if (states.contains(WidgetState.pressed)) {
                                return AppColors.appDarkGreenColor.withValues(alpha: 0.3);
                              }
                              return AppColors.appTransparentColor;
                            },
                          ),
                          splashFactory: NoSplash.splashFactory,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
