import 'package:flutter/material.dart';
import 'package:step_one/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StepOne());
}

class StepOne extends StatelessWidget {
  const StepOne({Key? key});

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
