import 'package:ass11/componenets/DetailsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(
    9,
        (index) => {
      'title': 'Item ${index + 1}',
      'details': 'Details about Item ${index + 1}. This is some sample text.',
      'image': 'img${index + 1}.jpg'
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Ten'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
            child: ListTile(
              leading: SizedBox(
                height: 60,
                  width: 90,
                  child: Image.asset("assets/${items[index]['image']!}",fit: BoxFit.fitWidth,),),
              title: Text(items[index]['title']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(item: items[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Top Ten App',
                  applicationVersion: 'v0.1.1',
                  children: [
                    const Text('This is a simple app showcasing the top ten items.'),
                  ],
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}