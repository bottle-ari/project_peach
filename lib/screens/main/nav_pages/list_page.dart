import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Page"),
        ),
        body: const Padding( padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("List Page"),
        )
    );
  }
}