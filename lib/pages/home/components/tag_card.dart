import 'package:bookstore_dicoding/repositories/book_data.dart';
import 'package:flutter/material.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFFFECEFF);
    Color textColor = const Color(0xFFAE5BAF);
    String text = 'Novel';
    if (category == Category.comic) {
      backgroundColor = const Color(0xFFFEFFCE);
      textColor = const Color(0xFFB2CC14);
      text = 'Comic';
    }
    if (category == Category.study) {
      backgroundColor = const Color(0xFFCFFFCE);
      textColor = const Color(0xFF14CC26);
      text = 'Study';
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
