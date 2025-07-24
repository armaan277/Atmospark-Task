import 'package:atmospark_task/models/ground_model.dart';

class GroundViewModel {
  static final List<Ground> grounds = [
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
}
