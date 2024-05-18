// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool _eliteInterface = false; // Default interface: growing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              title: Text('Elite Interface'),
              value: _eliteInterface,
              onChanged: (value) {
                setState(() {
                  _eliteInterface = value;
                });
              },
            ),
            // Add more account settings options here
          ],
        ),
      ),
    );
  }
}
