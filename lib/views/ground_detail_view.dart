import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:atmospark_task/models/ground_model.dart';
import 'package:atmospark_task/routes/routes.dart';
import 'package:atmospark_task/widgets/book_button.dart';
import 'package:atmospark_task/widgets/ground_slot_time.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GroundDetailView extends StatefulWidget {
  const GroundDetailView({super.key});

  @override
  State<GroundDetailView> createState() => _GroundDetailViewState();
}

class _GroundDetailViewState extends State<GroundDetailView> {
  final carouselController = CarouselSliderController();
   int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ground = ModalRoute.of(context)!.settings.arguments as Ground;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.appWhiteColor),
        ),
        centerTitle: true,
        title: Text(
          'Ground Detail',
          style: TextStyle(color: AppColors.appWhiteColor),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: ground.imageUrl.map((image) {
                  return Image.network(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlayInterval: Duration(seconds: 2),
                  height: 250,
                  viewportFraction: 1.0,
                  autoPlay: ground.imageUrl.length > 1 ? true : false,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                carouselController: carouselController,
              ),
              Positioned(
                bottom: 5,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: ground.imageUrl.asMap().entries.map((entry) {
                    return Container(
                      width: currentIndex == entry.key ? 16.0 : 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: currentIndex == entry.key
                            ? AppColors.appWhiteColor
                            : AppColors.appWhiteColor.withValues(alpha: 0.5),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ground.name,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColors.appDarkGreenColor,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  ground.location,
                                  style: TextStyle(
                                    color: AppColors.appGrayColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.0),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: AppColors.appLightGreenColor,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '₹${ground.pricePerHour}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('per hour', style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.appPastelGreenColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.appGoldColor,
                            size: 14,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '${ground.rating} Rating',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.appAquaBlueColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        ground.category,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
                Text(
                  'Available Time Slots',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                GroundSlotTime(
                  crossAxisCount: 3,
                  itemCount: ground.availableSlots.length,
                  timeSlots: ground.availableSlots.map((availableSlot) {
                    return availableSlot;
                  }).toList(),
                ),
              ],
            ),
          ),
          Spacer(),
          BookButton(
            title: 'Book Now',
            onPressed: () {
              Navigator.pushNamed(
                context,
                '${Routes.groundDetailView}${Routes.groundBookingView}',
                arguments: ground,
              );
            },
            icon: Icons.calendar_today,
            isBookingConfirm: true,
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
