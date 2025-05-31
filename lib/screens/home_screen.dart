import 'package:flutter/material.dart';
import '../models/hall_model.dart';
import '../utils/mock_data.dart';
import 'hall_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('قاعات الأفراح'),
      ),
      body: ListView.builder(
        itemCount: mockHalls.length,
        itemBuilder: (context, index) {
          Hall hall = mockHalls[index];
          return Card(
            child: ListTile(
              leading: Image.network(hall.images[0], width: 80),
              title: Text(hall.name),
              subtitle: Text(hall.city),
              trailing: Text('${hall.price} ر.س'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HallDetailsScreen(hall: hall),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}