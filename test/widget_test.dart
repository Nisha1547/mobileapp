// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:functionalapp/discover_screen.dart';

import 'package:functionalapp/main.dart';
import 'package:functionalapp/resource_details_screen.dart';
// ignore: unused_import
import 'package:functionalapp/resource_library_screen.dart';

void main() {
  testWidgets('Discover screen displays buddies', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the DiscoverScreen is displayed.
    expect(find.byType(DiscoverScreen), findsOneWidget);
    // Verify that the DiscoverScreen is displayed.
    expect(find.byType(ResourceDetailsScreen), findsOneWidget);

    // Verify that at least one buddy is displayed in the list.
    expect(find.byType(ListTile), findsWidgets);
  });
}
