import 'package:atmospark_task/ground_model.dart';
import 'package:flutter/material.dart';

final List<Ground> grounds = [
  Ground(
    id: '1',
    name: 'Football Turf',
    location: 'Nehru Nagar',
    imageUrl: '/placeholder.svg?height=200&width=300',
    pricePerHour: 400.0,
    availableSlots: ['10:00 AM', '12:00 PM', '2:00 PM', '4:00 PM'],
    rating: 4.8,
    category: 'Football',
  ),
  Ground(
    id: '2',
    name: 'Cricket Turf',
    location: 'Galaxy Apartment',
    imageUrl: '/placeholder.svg?height=200&width=300',
    pricePerHour: 300.0,
    availableSlots: ['11:00 AM', '1:00 PM', '3:00 PM', '5:00 PM'],
    rating: 4.6,
    category: 'Cricket',
  ),
  Ground(
    id: '3',
    name: 'Badminton Turf',
    location: 'Girnar Apartment',
    imageUrl: '/placeholder.svg?height=200&width=300',
    pricePerHour: 300.0,
    availableSlots: ['11:00 AM', '1:00 PM', '3:00 PM', '5:00 PM', '7:00 PM'],
    rating: 4.5,
    category: 'Multi-Sport',
  ),
  Ground(
    id: '4',
    name: 'Multi-Sport Turf',
    location: 'Mahada Apartment',
    imageUrl: '/placeholder.svg?height=200&width=300',
    pricePerHour: 300.0,
    availableSlots: ['11:00 AM', '1:00 PM', '3:00 PM', '5:00 PM'],
    rating: 4.6,
    category: 'Multi-Sport',
  ),
  Ground(
    id: '5',
    name: 'Elite Sports Complex',
    location: 'Championship City',
    imageUrl: '/placeholder.svg?height=200&width=300',
    pricePerHour: 450.0,
    availableSlots: ['9:00 AM', '11:00 AM', '1:00 PM', '3:00 PM', '5:00 PM'],
    rating: 4.9,
    category: 'Premium',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sports Grounds', style: TextStyle(color: Colors.white)),
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
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10.0),
                itemCount: grounds.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 380,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFDDE2DA),
                                    Color(0xFFA3A7A0),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                    bottom: 10.0,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withValues(alpha: 0.6),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 14,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '${grounds[index].rating}',
                                        style: TextStyle(
                                          color: Colors.white,
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
                                  color: Color(0xFF2E7D32),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Text(
                                  grounds[index].category,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    grounds[index].name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 10.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFbfe2b9),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      '₹${grounds[index].pricePerHour}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    grounds[index].location,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '${grounds[index].availableSlots.length} slots available',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    label: const Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      overlayColor:
                                          WidgetStateProperty.resolveWith<
                                            Color?
                                          >((states) {
                                            if (states.contains(
                                              WidgetState.pressed,
                                            )) {
                                              return const Color(
                                                0xFF2E7D32,
                                              ).withValues(alpha: 0.3);
                                            }
                                            return Colors.transparent;
                                          }),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
