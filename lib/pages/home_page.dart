import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Kimi
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Kimi!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '17 March, 2025',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
              
                      //Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // search bar
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 5),
                  Text('Search', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // how do you feel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'How do you feel ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.white),
              ],
            ),

            const SizedBox(height: 25),

            // 4 different faces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // bad
                Column(
                  children: const [
                    EmoticonFace(emotionface: '😫'),
                    SizedBox(height: 8),
                    Text('Bad', style: TextStyle(color: Colors.white)),
                  ],
                ),

                // fine
                Column(
                  children: const [
                    EmoticonFace(emotionface: '😐'),
                    SizedBox(height: 8),
                    Text('Fine', style: TextStyle(color: Colors.white)),
                  ],
                ),

                // well
                Column(
                  children: const [
                    EmoticonFace(emotionface: '😃'),
                    SizedBox(height: 8),
                    Text('Well', style: TextStyle(color: Colors.white)),
                  ],
                ),

                // excellent
                Column(
                  children: const [
                    EmoticonFace(emotionface: '🥳'),
                    SizedBox(height: 8),
                    Text('Excellent', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
              SizedBox(
                height: 25,
              ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 100,
              color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
