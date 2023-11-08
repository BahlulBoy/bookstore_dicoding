import 'package:bookstore_dicoding/repositories/book_data.dart';
import 'package:flutter/material.dart';

class DetailTag extends StatelessWidget {
  const DetailTag({
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
        horizontal: 13,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
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
