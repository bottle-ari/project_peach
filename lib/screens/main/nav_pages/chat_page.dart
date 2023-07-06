import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat Page"),
        ),
        body: const Padding( padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Chat Page"),
        )
    );
  }
}