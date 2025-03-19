import 'package:flutter/material.dart';

class ExerciseTitle extends StatefulWidget {
  final IconData icon;
  final String exerciseName;
  final int numberOfExercises;

  const ExerciseTitle({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
  }) : super(key: key);

  @override
  State<ExerciseTitle> createState() => _ExerciseTitleState();
}

class _ExerciseTitleState extends State<ExerciseTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.orange,
                    child: Icon(
                      widget.icon, // Fix: use widget.icon instead of icon
                      color: Colors.white),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      widget.exerciseName, // Fix: use widget.exerciseName instead of exerciseName
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    //subtitle
                    Text(
                      widget.numberOfExercises.toString() + ' Exercises', // Fix: use widget.numberOfExercises instead of numberOfExercises
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}