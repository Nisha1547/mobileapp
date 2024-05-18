// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, use_super_parameters

import 'package:flutter/material.dart';

// Dummy data for buddies (replace with actual data)
List<Map<String, dynamic>> dummyBuddies = [
  {
    'name': 'John Doe',
    'profilePicture': 'assets/images/profile1.png',
    'availability': 'Available',
    // Add more details as needed
  },
  {
    'name': 'Jane Smith',
    'profilePicture': 'assets/images/profile2.png',
    'availability': 'Away',
    // Add more details as needed
  },
  // Add more dummy data as needed
];

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
      ),
      body: ListView.builder(
        itemCount: dummyBuddies.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to details screen when buddy is selected
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      BuddyDetailsScreen(buddy: dummyBuddies[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage(dummyBuddies[index]['profilePicture']),
                ),
                title: Text(dummyBuddies[index]['name']),
                subtitle: Text(dummyBuddies[index]['availability']),
                // Add more buddy information here if needed
              ),
            ),
          );
        },
      ),
    );
  }
}

class BuddyDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> buddy;

  const BuddyDetailsScreen({Key? key, required this.buddy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buddy Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(buddy['profilePicture']),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              buddy['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Availability: ${buddy['availability']}',
              style: TextStyle(fontSize: 18),
            ),
            // Add more buddy details here if needed
          ],
        ),
      ),
    );
  }
}
