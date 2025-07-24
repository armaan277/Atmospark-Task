import 'package:flutter/material.dart';

class GroundSlotTime extends StatelessWidget {
  final int crossAxisCount;
  final int itemCount;
  final List<String> timeSlots;
  final Color color;
  final VoidCallback? onTap;
  const GroundSlotTime({
    super.key,
    required this.crossAxisCount,
    required this.itemCount,
    required this.timeSlots,
    this.color = const Color(0xffDFE4D9),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            child: Card(
              color: color,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time, size: 16.0),
                    SizedBox(width: 5.0),
                    Text(
                      timeSlots[index],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
