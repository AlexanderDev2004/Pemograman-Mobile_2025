import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RedTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final int maxLines;

  const RedTextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
        color: Colors.red,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      
    );
  }
}
