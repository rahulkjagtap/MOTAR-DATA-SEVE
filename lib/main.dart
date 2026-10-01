import 'package:flutter/material.dart';

void main() {
  runApp(const MotorDataSaveApp());
}

class MotorDataSaveApp extends StatelessWidget {
  const MotorDataSaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'मोटर डेटा सेव्ह',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF4F6F9),
      ),
      home: const HomeScreen(),
    );
  }
}

// ------------------- Navigation Drawer -------------------
class AppNavigationDrawer extends StatelessWidget {
  const AppNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF0052CC)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.electric_bolt, size: 45, color: Colors.yellow),
                SizedBox(height: 8),
                Text('MOTOR DATA SAVE', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Your Motor Data, Always With You', style: TextStyle(color: Colors.white70, fontSize: 11)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.blue),
            title: const Text('Home / होम'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.orange),
            title: const Text('Profile / प्रोफाईल'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language, color: Colors.indigo),
            title: const Text('Language / भाषा निवडा'),
            subtitle: const Text('मराठी, हिंदी, English, इत्यादी'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.photo_library, color: Colors.purple),
            title: const Text('Search Gallery / सर्च गॅलरी'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.teal),
            title: const Text('Share Data / शेअर डाटा'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.blueGrey),
            title: const Text('About / अबाउट'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout / लॉग आऊट'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// ------------------- Home Screen -------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('मोटर डेटा सेव्ह'),
        backgroundColor: const Color(0xFF0052CC),
        centerTitle: true,
      ),
      drawer: const AppNavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildDashboardCard(
              context,
              title: 'Add New Record',
              subTitle: 'नवीन मोटर नोंदणी',
              icon: Icons.add_circle,
              color: Colors.green,
            ),
            _buildDashboardCard(
              context,
              title: 'Search Data',
              subTitle: 'डेटा शोधा',
              icon: Icons.search,
              color: Colors.orange,
            ),
            _buildDashboardCard(
              context,
              title: 'Search Gallery',
              subTitle: 'गॅलरी फोटो',
              icon: Icons.photo_library,
              color: Colors.purple,
            ),
            _buildDashboardCard(
              context,
              title: 'Share Data',
              subTitle: 'डेटा शेअर करा',
              icon: Icons.share,
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(
    BuildContext context, {
    required String title,
    required String subTitle,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subTitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
