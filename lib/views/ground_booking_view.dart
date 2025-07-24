import 'package:atmospark_task/widgets/book_button.dart';
import 'package:atmospark_task/widgets/ground_slot_time.dart';
import 'package:flutter/material.dart';

class GroundBookingView extends StatelessWidget {
  const GroundBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        centerTitle: true,
        title: Text('Book Your Slot', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color(0xffF2F5EC),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Sunset Turf',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('Green City', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 8.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFbfe2b9),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Text(
                          '₹200/hour',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: Text(
                'Select Date',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Card(
                  color: Color(0xffF2F5EC),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: ListTile(
                        leading: Container(
                          height: 70,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFbfe2b9),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Icon(Icons.calendar_today, size: 30),
                        ),
                        title: Text(
                          'Choose Date',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 13.0,
                          ),
                        ),
                        subtitle: Text(
                          'Tap to select a date',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: Text(
                'Select Time Slot',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            GroundSlotTime(crossAxisCount: 2, itemCount: 5),
            Spacer(),
            BookButton(
              title: 'Book Now',
              onPressed: () {},
              icon: Icons.calendar_today,
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
