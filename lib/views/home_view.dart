import 'package:atmospark_task/constants/app_colors/app_colors.dart';
import 'package:atmospark_task/view_models/ground_view_model.dart';
import 'package:atmospark_task/widgets/ground_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sports Grounds', style: TextStyle(color: AppColors.appWhiteColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your Perfect Ground',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 8),
            Text(
              'Book premium sports facilities near you',
              style: TextStyle(color: AppColors.appGrayColor, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 15.0),
                itemCount: GroundViewModel.grounds.length,
                itemBuilder: (context, index) {
                  final ground = GroundViewModel.grounds[index];
                  return GroundCard(index: index, ground: ground);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
