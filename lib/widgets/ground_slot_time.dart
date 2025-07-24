import 'package:flutter/material.dart';

class GroundSlotTime extends StatelessWidget {
  final int crossAxisCount;
  final int itemCount;
  final List<String> timeSlots;
  final int? selectedIndex;
  final Function(int)? onTap;

  const GroundSlotTime({
    super.key,
    required this.crossAxisCount,
    required this.itemCount,
    required this.timeSlots,
    this.selectedIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final isSelected = selectedIndex == index;
        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => onTap?.call(index),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected ? Colors.green.shade100 : Color(0xffF2F5EC),
                border: Border.all(
                  color: isSelected ? Color(0xFF2E7D32) : Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, size: 16.0),
                  SizedBox(width: 5.0),
                  Text(
                    timeSlots[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Color(0xFF2E7D32) : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
