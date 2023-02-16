import 'package:chatgpt_ai_chatbot/constants/constants.dart';
import 'package:chatgpt_ai_chatbot/providers/chats_provider.dart';
import 'package:chatgpt_ai_chatbot/providers/models_provider.dart';
import 'package:chatgpt_ai_chatbot/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatProvider(),),
        ChangeNotifierProvider(create: (context) => ModelsProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: AppBarTheme(color: cardColor),
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const ChatScreen(),
      ),
    );
  }
}

