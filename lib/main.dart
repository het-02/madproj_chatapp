import 'package:flutter/material.dart';
import './screens/chat_screen.dart';
import 'models/message_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int index=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Message chat = messages[index];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF01afbd),
      ),

      home: ChatScreen(user: chat.sender,),

    );
  }
}