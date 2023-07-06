import 'package:flutter/material.dart';

class UserPage extends StatelessWidget{
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("User Page"),
        ),
        body: const Padding( padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("User Page"),
        )
    );
  }
}