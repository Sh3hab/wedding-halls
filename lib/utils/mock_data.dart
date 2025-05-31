import '../models/hall_model.dart';

List<Hall> mockHalls = [
  Hall(
    id: '1',
    name: 'قاعة الأحلام',
    city: 'الرياض',
    price: 8000,
    rating: 4.7,
    images: [
      'https://images.unsplash.com/photo-1519671482749-fd09be7ccebf?ixlib=rb-4.0.3',
    ],
    description: 'أجمل قاعة في الرياض بمساحة 2000 م²',
    amenities: {
      'كوشة': true,
      'بوفيه': true,
      'مواقف': true,
    },
  ),
  Hall(
    id: '2',
    name: 'قاعة النجوم',
    city: 'جدة',
    price: 6500,
    rating: 4.3,
    images: [
      'https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-4.0.3',
    ],
    description: 'قاعة فاخرة بإطلالة على البحر',
    amenities: {
      'كوشة': true,
      'واي فاي': true,
    },
  ),
];