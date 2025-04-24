import 'package:chatapp/pages/splash_page.dart';
import 'package:flutter/material.dart';
import './utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // TODO: Replace credentials with your own
    url: 'https://dyoxxdmhzbqlitpusiww.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR5b3h4ZG1oemJxbGl0cHVzaXd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc2MTYyNzEsImV4cCI6MjA1MzE5MjI3MX0.5exnwYNvnMe2M7-SDj9mBgyiG_Jaa0COjrfOzKeG8TI',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
