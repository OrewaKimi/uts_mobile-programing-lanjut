import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emotionface;

  const EmoticonFace({
    Key? key,
    required this.emotionface,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.teal[400],  
      borderRadius: BorderRadius.circular(12),
        ),

      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          emotionface,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
