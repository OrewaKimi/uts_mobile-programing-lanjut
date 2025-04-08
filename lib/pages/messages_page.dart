import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      // Di messages_page.dart
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('This is the Messages Page'),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('New Message'),
              content: const TextField(
                decoration: InputDecoration(hintText: 'Enter your message...'),
              ),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
                TextButton(onPressed: () => Navigator.pop(context), child: const Text('Send')),
              ],
            ),
          );
        },
        child: const Text('Add Message'),
      ),
    ],
  ),
),

    );
  }
}
