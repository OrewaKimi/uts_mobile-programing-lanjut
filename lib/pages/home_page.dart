import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hi, Kimi!',
                            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text('17 March, 2025', style: TextStyle(color: Colors.blue[200])),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 5),
                  Text('Search', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('How do you feel ?', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [EmoticonFace(emotionface: '😫'), SizedBox(height: 8), Text('Bad', style: TextStyle(color: Colors.white))]),
                Column(children: [EmoticonFace(emotionface: '😐'), SizedBox(height: 8), Text('Fine', style: TextStyle(color: Colors.white))]),
                Column(children: [EmoticonFace(emotionface: '😃'), SizedBox(height: 8), Text('Well', style: TextStyle(color: Colors.white))]),
                Column(children: [EmoticonFace(emotionface: '🥳'), SizedBox(height: 8), Text('Excellent', style: TextStyle(color: Colors.white))]),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Exercises', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTitle(icon: Icons.favorite, exerciseName: 'Speaking Skills', numberOfExercises: 12, color: Colors.orange),
                          ExerciseTitle(icon: Icons.book, exerciseName: 'Reading Skills', numberOfExercises: 8, color: Colors.green),
                          ExerciseTitle(icon: Icons.create, exerciseName: 'Writing Skills', numberOfExercises: 6, color: Colors.black),
                          ExerciseTitle(icon: Icons.headphones, exerciseName: 'Listening Skills', numberOfExercises: 4, color: Colors.red),
                          ExerciseTitle(icon: Icons.lightbulb, exerciseName: 'Critical Thinking', numberOfExercises: 5, color: Colors.purple),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
