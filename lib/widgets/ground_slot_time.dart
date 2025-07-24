import 'package:flutter/material.dart';

class GroundSlotTime extends StatelessWidget {
  final int crossAxisCount;
  final int itemCount;
  const GroundSlotTime({super.key, required this.crossAxisCount, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Card(
          color: Color(0xffDFE4D9),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_time, size: 16.0),
                SizedBox(width: 5.0),
                Text('10:00 AM', style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        );
      },
    );
  }
}
