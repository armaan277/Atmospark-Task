import 'package:atmospark_task/ground_booking_screen.dart';
import 'package:flutter/material.dart';

class GroundDetailScreen extends StatelessWidget {
  const GroundDetailScreen({super.key});

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
        title: Text('Ground Detail', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFDDE2DA), Color(0xFFA3A7A0)],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Sunset Turf',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF2E7D32),
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '123 Green Lane',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFbfe2b9),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '₹200',
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
                        color: Color(0xffD6E8C6),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          SizedBox(width: 5),
                          Text(
                            '4.8 Rating',
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
                        color: Color(0xffBBECF0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Football',
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Wrap(
                  spacing: 12.0,
                  runSpacing: 10.0,
                  children: List.generate(5, (index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffDFE4D9),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.access_time, size: 16.0),
                          SizedBox(width: 5.0),
                          Text(
                            '10:00 AM',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 10.0,
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return GroundBookingScreen();
                    },
                  ),
                );
              },
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
          ),
        ],
      ),
    );
  }
}
