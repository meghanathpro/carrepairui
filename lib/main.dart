import 'package:flutter/material.dart';
import 'package:carrepairui/screens/begin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: Colors.deepPurple.shade300,
            secondary: Colors.deepPurple.shade900,
            onSecondary: Colors.white,
            outline: Colors.grey.shade300,
            onTertiary: Colors.deepPurple.shade200,
            tertiary: Colors.deepPurple.shade100,
            tertiaryContainer: Colors.redAccent.shade100,
            surfaceVariant: Colors.greenAccent.shade100,
            surface: const Color.fromARGB(255, 250, 250, 252)),
        useMaterial3: true,
      ),
      routes: {
        '/begin': (context) => const BeginScreen(),
      },
      home: const BeginScreen(),
    );
  }
}
