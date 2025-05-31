import 'package:flutter/material.dart';
import '../models/hall_model.dart';

class HallDetailsScreen extends StatelessWidget {
  final Hall hall;

  const HallDetailsScreen({super.key, required this.hall});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hall.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(hall.images[0], height: 200, width: double.infinity),
            const SizedBox(height: 16),
            Text('المدينة: ${hall.city}', style: const TextStyle(fontSize: 18)),
            Text('السعر: ${hall.price} ر.س', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            const Text('الخدمات:', style: TextStyle(fontWeight: FontWeight.bold)),
            ...hall.amenities.entries.map((e) => 
              ListTile(
                leading: Icon(e.value ? Icons.check : Icons.close),
                title: Text(e.key),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('احجز الآن'),
            ),
          ],
        ),
      ),
    );
  }
}