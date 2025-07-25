import 'package:atmospark_task/models/ground_model.dart';

class GroundViewModel {
  static final List<Ground> grounds = [
    Ground(
      id: '1',
      name: 'Champion Football Field',
      location: '45 Victory Road, Downtown',
      imageUrl: [
        'https://images.unsplash.com/photo-1489944440615-453fc2b6a9a9?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1431324155629-1a6deb1dec8d?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1560272564-c83b66b1ad12?w=300&h=200&fit=crop',
      ],
      pricePerHour: 250.0,
      availableSlots: ['9:00 AM', '11:00 AM', '2:00 PM', '4:00 PM', '6:00 PM'],
      rating: 4.7,
      category: 'Football',
    ),

    Ground(
      id: '2',
      name: 'Metro Hockey Ground',
      location: '128 Athletic Drive, Westside',
      imageUrl: [
        'https://images.unsplash.com/photo-1580748141549-71748dbe0bdc?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1489944440615-453fc2b6a9a9?w=300&h=200&fit=crop',
      ],
      pricePerHour: 180.0,
      availableSlots: ['8:00 AM', '10:00 AM', '12:00 PM', '3:00 PM', '5:00 PM'],
      rating: 4.5,
      category: 'Hockey',
    ),

    Ground(
      id: '3',
      name: 'Royal Cricket Ground',
      location: '67 Pavilion Street, Eastside',
      imageUrl: [
        'https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1531415074968-036ba1b575da?w=300&h=200&fit=crop',
      ],
      pricePerHour: 320.0,
      availableSlots: ['10:00 AM', '1:00 PM', '4:00 PM'],
      rating: 4.8,
      category: 'Cricket',
    ),

    Ground(
      id: '4',
      name: 'Urban Basketball Court',
      location: '234 Hoops Lane, Northside',
      imageUrl: [
        'https://images.unsplash.com/photo-1546519638-68e109498ffc?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1627627256672-027a4613d028?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1519861531473-9200262188bf?w=300&h=200&fit=crop',
      ],
      pricePerHour: 120.0,
      availableSlots: ['7:00 AM', '9:00 AM', '11:00 AM', '1:00 PM'],
      rating: 4.3,
      category: 'Basketball',
    ),

    Ground(
      id: '5',
      name: 'Premium Tennis Court',
      location: '89 Ace Boulevard, Southside',
      imageUrl: [
        'https://images.unsplash.com/photo-1554068865-24cecd4e34b8?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1542144582-1ba00456b5e3?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1595435934249-5df7ed86e1c0?w=300&h=200&fit=crop',
      ],
      pricePerHour: 400.0,
      availableSlots: ['8:00 AM', '10:00 AM', '12:00 PM', '2:00 PM'],
      rating: 4.9,
      category: 'Tennis',
    ),
  ];
}
