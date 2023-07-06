import 'package:flutter/material.dart';

class LikePage extends StatelessWidget{
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Like Page"),
        ),
        body: const Padding( padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Like Page"),
        )
    );
  }
}