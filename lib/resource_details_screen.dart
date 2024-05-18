import 'package:flutter/material.dart';

class ResourceDetailsScreen extends StatelessWidget {
  final String resource;

  const ResourceDetailsScreen({super.key, required this.resource});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resource Details'),
      ),
      body: Center(
        child: Text(resource), // Display details of the selected resource
      ),
    );
  }
}
