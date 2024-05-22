import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int id;

  const ImageDetails({super.key, required this.imageUrl, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Photo Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageUrl),
              const SizedBox(height: 20),
              Text('Title: $title', style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Text('ID: $id', style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
