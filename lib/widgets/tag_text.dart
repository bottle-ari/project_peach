

import 'package:flutter/cupertino.dart';

class TagText extends StatelessWidget{

  final String text;

  const TagText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF1F1F1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF797979),
          ),
        ),
      ),
    );
  }


}