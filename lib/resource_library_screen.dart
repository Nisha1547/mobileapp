import 'package:flutter/material.dart';
import 'package:functionalapp/resource_details_screen.dart';

class ResourceLibraryScreen extends StatelessWidget {
  const ResourceLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resource Library'),
      ),
      body: DefaultTabController(
        length: 3, // Number of resource categories (notes, articles, videos)
        child: Column(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(height: 50),
              child: const TabBar(
                tabs: [
                  Tab(text: 'Notes'),
                  Tab(text: 'Articles'),
                  Tab(text: 'Videos'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Replace these placeholders with actual resource lists
                  _buildResourceList('Notes'),
                  _buildResourceList('Articles'),
                  _buildResourceList('Videos'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResourceList(String category) {
    // Replace this with logic to fetch resources for the given category
    // For now, we'll use dummy data
    List<String> resources = ['Resource 1', 'Resource 2', 'Resource 3'];

    return ListView.builder(
      itemCount: resources.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(resources[index]),
          onTap: () {
            // Navigate to resource details screen when a resource is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ResourceDetailsScreen(resource: resources[index]),
              ),
            );
          },
        );
      },
    );
  }
}
