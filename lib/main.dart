import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:step_one/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(const StepOne());
}

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Step One',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: const Splash(),
    );
  }
}
