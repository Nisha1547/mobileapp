// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudyBuddyApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Student Email ID'),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate authentication (replace with your actual authentication logic)
                bool isAuthenticated =
                    true; // Replace this with your authentication logic

                if (isAuthenticated) {
                  // If authentication is successful, navigate to home page
                  Navigator.pushReplacementNamed(context, '/home');
                  // ignore: dead_code
                } else {
                  // If authentication fails, show an error message
                }
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
