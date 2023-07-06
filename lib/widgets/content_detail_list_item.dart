import 'package:flutter/material.dart';

class ContentDetailListItem extends StatelessWidget {

  final String property, description;

  const ContentDetailListItem(
      {super.key, required this.property, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(property,
            style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF797979),
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(width: 80,),
          Text(description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }


}