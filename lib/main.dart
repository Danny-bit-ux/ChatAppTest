import 'package:flutter/material.dart';
import 'package:flutter_chat_app_test/constants/constants.dart';
import 'package:flutter_chat_app_test/features/auth/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://keantfgsisqtztpokuwx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtlYW50ZmdzaXNxdHp0cG9rdXd4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY3MTc3NTcsImV4cCI6MjAyMjI5Mzc1N30.puFP3P3kvJmlhIWimrhTgqTduuv5SQmKCqjYiLe6j4c',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Messenger',
        theme: appTheme,
        home: const SplashPage());
  }
}
