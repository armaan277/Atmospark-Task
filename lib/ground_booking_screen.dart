import 'package:flutter/material.dart';

class GroundBookingScreen extends StatelessWidget {
  const GroundBookingScreen({super.key});

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
            Card(
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
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xffF2F5EC),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time, size: 16.0),
                        SizedBox(width: 5.0),
                        Text(
                          '10:00 AM',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                'Book Now',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              icon: Icon(Icons.calendar_today, size: 20, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2E7D32),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
