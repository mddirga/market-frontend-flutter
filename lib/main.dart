import 'package:flutter/material.dart';
import 'package:market/pages/detail_chat_page.dart';
import 'package:market/pages/home/main_page.dart';
import 'package:market/pages/login_page.dart';
import 'package:market/pages/notification_page.dart';
import 'package:market/pages/register_page.dart';
import 'package:market/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const MainPage(),
        '/notification': (context) => const NotificationPage(),
        '/chat-detail': (context) => const DetailChatPage(),
      },
    );
  }
}
