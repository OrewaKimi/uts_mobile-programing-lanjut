import 'package:flutter/material.dart';
import 'home_page.dart';
import 'messages_page.dart';
import 'profile_page.dart';

class NavigationStack extends StatefulWidget {
  const NavigationStack({super.key});

  @override
  State<NavigationStack> createState() => _NavigationStackState();
}

class _NavigationStackState extends State<NavigationStack> {
  int _selectedIndex = 0;
  final TextEditingController _controller = TextEditingController();

  static final List<Widget> _pages = [
    const HomePage(),
    const MessagesPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Tampilkan input dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Input Navigation ${index + 1}'),
        content: TextField(
          controller: _controller,
          decoration: InputDecoration(hintText: 'Masukkan sesuatu...'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Input: ${_controller.text}')),
              );
              _controller.clear();
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
