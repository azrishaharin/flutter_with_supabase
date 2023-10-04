import 'package:flutter/material.dart';
import 'package:flutter_with_supabase/pages/account_page.dart';
import 'package:flutter_with_supabase/pages/login_page.dart';
import 'package:flutter_with_supabase/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://pxqqkrsyoqfhrdeouwwj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4cXFrcnN5b3FmaHJkZW91d3dqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTY0MTAxMjYsImV4cCI6MjAxMTk4NjEyNn0.EvRD0tQfsjKS5srD8ZKGWFcjkDghJp5nXCvcHjY1v30',
    authFlowType: AuthFlowType.pkce,
  );

  runApp(MyApp());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
